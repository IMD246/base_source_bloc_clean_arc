import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/configs/di/di.dart';
import '../../../../core/constants/route_constants.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/helpers/helpers.dart';
import '../../../../domain/entities/entities.dart';
import '../../../app.dart';
import '../../../base/base_page_state.dart';
import '../../../common_blocs/socket_notification/socket_notification_bloc.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../resource/resource.dart';
import '../../../routing/router/router.dart';
import 'bloc/conversations_bloc.dart';

part 'widgets/conversation_tile.dart';

@RoutePage()
class ConversationsPage extends StatefulWidget {
  const ConversationsPage({super.key});

  @override
  State<ConversationsPage> createState() => _ConversationsPageState();
}

class _ConversationsPageState extends BasePageState<ConversationsPage, ConversationsBloc> with RouteAware {
  @override
  void onBlocInitialed() {
    bloc.add(const ConversationsInitial());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context) as PageRoute);
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  // @override
  // void didPopNext() {
  //   super.didPopNext();
  //   _getAllConversations();
  // }

  Future<void> _getAllConversations() async {
    bloc.add(const GetConversations());
  }

  void _onCreateConversation() {
    context.pushNamed(RouteList.createConversation);
  }

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      appBar: _buildAppBar(context),
      body: BlocBuilder<ConversationsBloc, ConversationsState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const AppDefaultLoading();
          }

          return RefreshIndicator(
            onRefresh: _getAllConversations,
            child: ListView.builder(
              itemBuilder: (_, index) => ConversationTitle(state.conversations[index]),
              itemCount: state.conversations.length,
            ),
          );
        },
      ),
    );
  }

  CommonAppBar _buildAppBar(BuildContext context) {
    return CommonAppBar(
      text: context.l10n.conversations__title,
      actions: [
        Padding(
          padding: AppSpacing.edgeInsetsH16,
          child: AppIcon(icon: AppIcons.createConversation),
        ).clickable(_onCreateConversation),
      ],
    );
  }
}
