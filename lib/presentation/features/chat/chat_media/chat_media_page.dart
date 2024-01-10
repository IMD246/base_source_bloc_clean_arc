import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../../../../domain/entities/entities.dart';
import '../../../base/base_page_state.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../resource/styles/styles.dart';
import 'bloc/chat_media_bloc.dart';

const _kDefaultCrossAxisCount = 3;

class ChatMediaPage extends StatefulWidget {
  const ChatMediaPage({required this.conversation, super.key});

  final Conversation conversation;

  @override
  State<ChatMediaPage> createState() => _ChatMediaPageState();
}

class _ChatMediaPageState extends BasePageState<ChatMediaPage, ChatMediaBloc> {
  @override
  void onBlocInitialed() {
    bloc.conversation = widget.conversation;
    bloc.add(const ChatMediaInitialEvent());
    super.onBlocInitialed();
  }

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      appBar: CommonAppBar(text: context.l10n.chat_media__title),
      body: BlocBuilder<ChatMediaBloc, ChatMediaState>(
        bloc: bloc,
        builder: (context, state) {
          final medias = state.documents.where((e) => e.isMedia).map(RemoteMedia.fromDocument).toList();

          return state.isLoading ? buildCenterLoading() : _buildMediaList(medias);
        },
      ),
    );
  }

  Widget _buildMediaList(List<RemoteMedia> medias) {
    if (medias.isEmpty) {
      return Center(
        child: Text(context.l10n.chat_media__no_media),
      );
    }

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: AppSpacing.edgeInsetsAll16,
      itemCount: medias.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: _kDefaultCrossAxisCount,
        crossAxisSpacing: Sizes.s4,
        mainAxisSpacing: Sizes.s4,
      ),
      itemBuilder: (context, index) => _buildAttachmentItem(
        context: context,
        attachment: medias[index],
        maxWidth: double.infinity,
        onTap: () => _onViewAttachments(context, medias, index),
      ),
    );
  }

  Widget _buildAttachmentItem({
    required BuildContext context,
    required RemoteMedia attachment,
    required double maxWidth,
    required VoidCallback onTap,
  }) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: maxWidth),
      child: MediaViewer(
        attachment,
        onTap: onTap,
        isPreview: true,
      ),
      // child: CachedNetworkImage(imageUrl: attachment.url),
    );
  }

  void _onViewAttachments(BuildContext context, List<RemoteMedia> medias, int index) {
    context.push(
      MediasViewerCarouselPage(
        medias,
        initialIndex: index,
      ),
    );
  }
}
