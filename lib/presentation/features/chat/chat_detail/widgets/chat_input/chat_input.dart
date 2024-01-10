import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/constants/ui/box_shadow_constants.dart';
import '../../../../../../core/extensions/extensions.dart';
import '../../../../../../core/utils/utils.dart';
import '../../../../../../domain/entities/entities.dart';
import '../../../../../common_widgets/common_widgets.dart';
import '../../../../../resource/resource.dart';
import '../../../widgets/document_preview.dart';
import '../../bloc/chat_detail_bloc.dart';

part 'attachments_preview.dart';
part 'edit_reply_widget.dart';
part 'pick_attachment_bottom_sheet.dart';

class ChatInput extends StatefulWidget {
  const ChatInput({required this.onSend, super.key});

  final VoidCallback onSend;

  @override
  State<ChatInput> createState() => _ChatInputState();
}

class _ChatInputState extends State<ChatInput> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  final ValueNotifier<bool> _isEditing = ValueNotifier(false);

  @override
  void initState() {
    super.initState();

    _listenTextEditing();
  }

  void _listenTextEditing() {
    _focusNode.addListener(() {
      _isEditing.value = _focusNode.hasFocus;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _onSend() {
    context.read<ChatDetailBloc>().add(SendMessage(_controller.text));
    _controller.clear();
    widget.onSend();
  }

  void _onTyping(String value) {
    context.read<ChatDetailBloc>().add(const SendTypingIndicator());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChatDetailBloc, ChatDetailState>(
      listenWhen: (previous, current) =>
          previous.editingMessage != current.editingMessage || previous.toReplyMessage != current.toReplyMessage,
      listener: (context, state) {
        if (state.editingMessage != null || state.toReplyMessage != null) {
          _focusNode.requestFocus();
          if (state.editingMessage != null) {
            _controller.text = state.editingMessage!.content;
          }
        } else {
          _controller.clear();
        }
      },
      child: Container(
        margin: EdgeInsets.only(bottom: context.bottomPadding > 0 ? Sizes.s32 : Sizes.s16),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.05),
              blurRadius: Sizes.s8,
              offset: const Offset(0, -Sizes.s8),
            ),
          ],
        ),
        child: Column(
          children: [
            const EditReplyWidget(),
            const AttachmentsPreviewWidget(),
            _buildInput(),
          ],
        ),
      ),
    );
  }

  Widget _buildInput() {
    return Padding(
      padding: AppSpacing.edgeInsetsH16,
      child: Row(
        children: [
          _buildAttachButtons(),
          Expanded(child: _buildTextField()),
          _buildSendButton(),
        ],
      ),
    );
  }

  Widget _buildTextField() {
    return Container(
      padding: AppSpacing.edgeInsetsH16,
      decoration: BoxDecoration(
        color: AppColors.lightGray,
        borderRadius: BorderRadius.circular(Sizes.s24),
      ),
      child: TextField(
        controller: _controller,
        focusNode: _focusNode,
        style: AppTextStyles.bodyLarge,
        maxLines: 5,
        minLines: 1,
        decoration: InputDecoration(
          hintStyle: AppTextStyles.bodyLarge.gray,
          hintText: context.l10n.chat_detail__write_your_message,
          border: InputBorder.none,
        ),
        onChanged: _onTyping,
      ),
    );
  }

  Widget _buildSendButton() {
    return Container(
      margin: AppSpacing.edgeInsetsOnlyLeft8,
      decoration: const BoxDecoration(
        color: AppColors.primary,
        shape: BoxShape.circle,
      ),
      child: AppIcon(
        icon: AppIcons.send,
        color: AppColors.white,
        padding: AppSpacing.edgeInsetsAll12,
      ),
    ).clickable(_onSend);
  }

  Widget _buildAttachButtons() {
    return BlocBuilder<ChatDetailBloc, ChatDetailState>(
      buildWhen: (previous, current) =>
          previous.toReplyMessage != current.toReplyMessage || previous.editingMessage != current.editingMessage,
      builder: (context, state) {
        if (state.toReplyMessage != null || state.editingMessage != null) {
          return AppSpacing.emptyBox;
        }

        return ValueListenableBuilder(
          valueListenable: _isEditing,
          builder: (_, isEditing, __) {
            if (isEditing) {
              return AppSpacing.emptyBox;
            }

            return Row(
              children: [
                _buildAttachMediaButton(),
                _buildCameraButton(),
              ],
            );
          },
        );
      },
    );
  }

  Widget _buildCameraButton() {
    return AppIcon(
      icon: AppIcons.camera,
      color: AppColors.gray,
      padding: AppSpacing.edgeInsetsAll12.copyWith(left: 0.0),
      onTap: _onCameraButtonPressed,
    );
  }

  Widget _buildAttachMediaButton() {
    return AppIcon(
      icon: AppIcons.attachment,
      color: AppColors.gray,
      padding: AppSpacing.edgeInsetsAll12.copyWith(left: 0.0),
      onTap: _onAttachmentButtonPressed,
    );
  }

  Future<void> _onAttachmentButtonPressed() {
    return ViewUtils.showBottomSheet<File>(
      context,
      child: PickAttachmentBottomSheet(
        onPickMedia: _onAttachMediaPressed,
        onPickDocument: _onAttachFilePressed,
      ),
    ).then((value) {});
  }

  Future<void> _onAttachFilePressed() async {
    await FileUtils.pickFile().then((pickedFile) => {
          if (pickedFile != null)
            {
              context.read<ChatDetailBloc>().add(AttachDocuments([pickedFile])),
            },
        });
  }

  Future<void> _onAttachMediaPressed() async {
    await MediaUtils.pickMedias().then((medias) {
      if (medias.isNotEmpty) {
        _attachDocuments(medias.map((e) => e.file).toList());
      }
    });
  }

  void _attachDocuments(List<File> file) {
    context.read<ChatDetailBloc>().add(AttachDocuments(file));
  }

  void _onCameraButtonPressed() {
    ViewUtils.showBottomSheet(
      context,
      child: const CameraView(),
      isScrollControlled: true,
      padding: EdgeInsets.zero,
    ).then((value) => {
          if (value != null) _attachDocuments([value]),
        });
  }
}
