import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../base/base_page_state.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../resource/resource.dart';
import 'bloc/profile_photo_bloc.dart';

part 'profile_photo_widgets.dart';

@RoutePage()
class ProfilePhotoPage extends StatefulWidget {
  const ProfilePhotoPage({super.key});

  @override
  State<ProfilePhotoPage> createState() => _ProfilePhotoPageState();
}

class _ProfilePhotoPageState extends BasePageState<ProfilePhotoPage, ProfilePhotoBloc> {
  @override
  bool get useLoadingIndicator => true;

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      hideKeyboardWhenTouchOutside: true,
      appBar: CommonAppBar(),
      body: ListView(
        padding: AppSpacing.edgeInsetsH16,
        physics: const ClampingScrollPhysics(),
        children: [
          const _ProfilePhotoDecorationTexts(),
          AppSpacing.gapH16,
          BlocBuilder<ProfilePhotoBloc, ProfilePhotoState>(
            buildWhen: (previous, current) => current.filePath != previous.filePath,
            builder: (context, state) {
              return state.filePath.isEmpty && state.currentAvatar.isEmpty
                  ? EmptyAttachmentWidget(onUploadButtonPressed: () {
                      bloc.add(const SelectPhotoPressed());
                    })
                  : _PhotoWidget(
                      filePath: state.filePath,
                      currentAvatar: state.currentAvatar,
                    );
            },
          ),
          AppSpacing.gapH16,
          const _NextButton(),
          AppSpacing.gapH56,
        ],
      ),
    );
  }
}
