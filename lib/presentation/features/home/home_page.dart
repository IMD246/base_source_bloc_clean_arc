import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/configs/di/di.dart';
import '../../../core/constants/route_constants.dart';
import '../../../core/extensions/extensions.dart';
import '../../common_blocs/socket_notification/socket_notification_bloc.dart';
import '../../common_widgets/common_widgets.dart';
import '../../resource/resource.dart';
import '../../routing/router/router.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _navigateToChatPage(BuildContext context) {
    context.pushNamed(RouteList.conversationsList);
  }

  void _navigateToSearchPage() {}

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      physics: const NeverScrollableScrollPhysics(),
      routes: const [
        FeedsRoute(),
        CalendarRoute(),
        ContactsRoute(),
        NotificationsRoute(),
        ProfileRoute(),
        MenuRoute(),
      ],
      builder: (context, child, controller) {
        return Scaffold(
          appBar: _buildAppBar(context, controller),
          body: child,
          // bottomNavigationBar: buildBottomNav(context, context.tabsRouter),
        );
      },
    );
  }

  PreferredSizeWidget _buildAppBar(
      BuildContext context, TabController controller) {
    return CommonAppBar(
      height: 100,
      leadingWidth: 100,
      leadingIcon: LeadingIcon.logo,
      actions: _buildActionButtons(context),
      bottom: CustomTabBar(
        controller: controller,
        tabs: [
          _buildTabBarIcon(
            controller.index == 0 ? AppIcons.home : AppIcons.homeRegular,
            isSelected: controller.index == 0,
          ),
          _buildTabBarIcon(
            controller.index == 1
                ? AppIcons.calendar
                : AppIcons.calendarRegular,
            isSelected: controller.index == 1,
          ),
          _buildTabBarIcon(
            controller.index == 2
                ? AppIcons.contacts
                : AppIcons.contactsRegular,
            isSelected: controller.index == 2,
          ),
          _buildTabBarIcon(
            controller.index == 3 ? AppIcons.bell : AppIcons.bellRegular,
            isSelected: controller.index == 3,
          ),
          _buildTabBarIcon(
            controller.index == 4 ? AppIcons.user : AppIcons.userRegular,
            isSelected: controller.index == 4,
          ),
          _buildTabBarIcon(
            controller.index == 5 ? AppIcons.menu : AppIcons.menuRegular,
            isSelected: controller.index == 5,
          ),
        ],
      ),
    );
  }

  Widget _buildTabBarIcon(Object icon, {required bool isSelected}) {
    return Tab(
        icon: AppIcon(
            icon: icon,
            color: isSelected ? AppColors.primary : AppColors.gray));
  }

  List<Widget> _buildActionButtons(BuildContext context) {
    return [
      Padding(
        padding: AppSpacing.edgeInsetsAll8.copyWith(right: Sizes.s4),
        child: _buildActionButton(AppIcons.search),
      ).clickable(_navigateToSearchPage),
      Padding(
        padding: AppSpacing.edgeInsetsAll8
            .copyWith(left: Sizes.s4, right: Sizes.s16),
        child: buildChatActionButton(context),
      ).clickable(() => _navigateToChatPage(context)),
    ];
  }

  Widget buildChatActionButton(BuildContext context) {
    final socketNotiBloc = getIt<SocketNotificationBloc>();

    return BlocProvider(
      create: (context) => socketNotiBloc,
      child: BlocBuilder<SocketNotificationBloc, SocketNotificationState>(
        builder: (context, state) {
          if (state.unreadCount == 0) {
            return _buildActionButton(AppIcons.chat);
          }

          return Stack(
            children: [
              _buildActionButton(AppIcons.chat),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  alignment: Alignment.center,
                  width: Sizes.s16,
                  height: Sizes.s16,
                  decoration: const BoxDecoration(
                    color: AppColors.error,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    state.unreadCount.toString(),
                    style:
                        AppTextStyles.bodySmall.white.bold.copyWith(height: 1),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildActionButton(Object icon) {
    return AppIcon(
      icon: icon,
      isCircle: true,
      padding: AppSpacing.edgeInsetsAll8,
      size: 18.0,
      backgroundColor: AppColors.lightGray,
    );
  }
}
