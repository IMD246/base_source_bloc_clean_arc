import 'package:flutter/material.dart';

import '../../../../../core/extensions/context_extensions.dart';
import '../../../../common_widgets/loading.dart';
import '../../../../resource/styles/styles.dart';

class CreatingConversationWidget extends StatelessWidget {
  const CreatingConversationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const AppDefaultLoading(),
          AppSpacing.gapH12,
          Text(context.l10n.create_conversation__creating_conversation),
        ],
      ),
    );
  }
}
