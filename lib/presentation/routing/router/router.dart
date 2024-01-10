// ignore_for_file: prefer-single-widget-per-file

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../core/constants/route_constants.dart';
import '../../../domain/entities/entities.dart';
import '../../features/features.dart';
import '../../features/onboarding/add_product/add_product_page.dart';
import '../../features/onboarding/company_information/company_information_page.dart';
import '../../features/onboarding/create_company/create_company_page.dart';
import '../../features/onboarding/onboarding_welcome/onboarding_welcome_page.dart';
import '../../features/onboarding/personal_information/personal_information_page.dart';
import '../../features/onboarding/profile_photo/profile_photo_page.dart';
import '../guard/auth_guard.dart';

part 'router.gr.dart';

@singleton
@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  AppRouter();

  @override
  late final List<AutoRoute> routes = [
    // auth
    AutoRoute(page: WelcomeRoute.page, path: RouteList.welcome),
    AutoRoute(page: SignInRoute.page, path: RouteList.signIn),
    AutoRoute(page: SignUpRoute.page, path: RouteList.signUp),
    AutoRoute(page: ForgotPassRoute.page, path: RouteList.forgotPassword),
    // home
    AutoRoute(
      page: HomeRoute.page,
      path: RouteList.home,
      guards: const [AuthGuard()],
      children: [
        RedirectRoute(path: '', redirectTo: RouteList.feedTab),
        AutoRoute(page: FeedsRoute.page, path: RouteList.feedTab),
        AutoRoute(page: CalendarRoute.page, path: RouteList.calendarTab),
        AutoRoute(page: ContactsRoute.page, path: RouteList.contactsTab),
        AutoRoute(
            page: NotificationsRoute.page, path: RouteList.notificationsTab),
        AutoRoute(page: ProfileRoute.page, path: RouteList.profileTab),
        AutoRoute(page: MenuRoute.page, path: RouteList.menuTab),
      ],
    ),
    // chat
    AutoRoute(page: ConversationsRoute.page, path: RouteList.conversationsList),
    AutoRoute(
        page: CreateConversationRoute.page, path: RouteList.createConversation),
    AutoRoute(page: CreateGroupConversationRoute.page),
    AutoRoute(page: ChatDetailRoute.page, path: RouteList.chatDetail),
    AutoRoute(page: ChatOptionsRoute.page, path: RouteList.chatOptions),
    AutoRoute(
        page: ChatParticipantsRoute.page, path: RouteList.chatParticipants),
    // programs
    AutoRoute(page: ProgramsRoute.page, path: RouteList.programs),

    //Onboarding
    AutoRoute(
      page: PersonalInfomationRoute.page,
      path: RouteList.onboardingPersonalInfomation,
    ),
    AutoRoute(
      page: ProfilePhotoRoute.page,
      path: RouteList.onboardingProfilePhoto,
    ),
    AutoRoute(
      page: CompanyInformationRoute.page,
      path: RouteList.onboardingCompanyInformation,
    ),
    AutoRoute(
      page: CreateCompanyRoute.page,
      path: RouteList.onboardingCreateCompany,
    ),
    AutoRoute(
      page: AddProductRoute.page,
      path: RouteList.onboardingAddProduct,
    ),
    AutoRoute(
      page: WelcomOnboardingRoute.page,
      path: RouteList.onboardingWelcome,
    ),
    // fallback
    RedirectRoute(path: '*', redirectTo: '/'),
  ];
}

@RoutePage(name: 'FeedTab')
class BooksTabPage extends AutoRouter {
  const BooksTabPage({super.key});
}

@RoutePage(name: 'ProfileTab')
class ProfileTabPage extends AutoRouter {
  const ProfileTabPage({super.key});
}
