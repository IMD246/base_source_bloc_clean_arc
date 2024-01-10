// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AddProductRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddProductPage(),
      );
    },
    FeedTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BooksTabPage(),
      );
    },
    CalendarRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CalendarPage(),
      );
    },
    ChatDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ChatDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ChatDetailPage(
          args.conversation,
          key: args.key,
        ),
      );
    },
    ChatOptionsRoute.name: (routeData) {
      final args = routeData.argsAs<ChatOptionsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ChatOptionsPage(
          args.conversation,
          key: args.key,
        ),
      );
    },
    ChatParticipantsRoute.name: (routeData) {
      final args = routeData.argsAs<ChatParticipantsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ChatParticipantsPage(
          args.conversation,
          key: args.key,
        ),
      );
    },
    CompanyInformationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CompanyInformationPage(),
      );
    },
    ContactsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ContactsPage(),
      );
    },
    ConversationsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ConversationsPage(),
      );
    },
    CreateCompanyRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CreateCompanyPage(),
      );
    },
    CreateConversationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CreateConversationPage(),
      );
    },
    CreateGroupConversationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CreateGroupConversationPage(),
      );
    },
    FeedsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FeedsPage(),
      );
    },
    ForgotPassRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ForgotPassPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    MenuRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MenuPage(),
      );
    },
    NotificationsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NotificationsPage(),
      );
    },
    PersonalInfomationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PersonalInfomationPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    ProfilePhotoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePhotoPage(),
      );
    },
    ProfileTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileTabPage(),
      );
    },
    ProgramsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProgramsPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignInPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignUpPage(),
      );
    },
    WelcomOnboardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const WelcomOnboardingPage(),
      );
    },
    WelcomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const WelcomePage(),
      );
    },
  };
}

/// generated route for
/// [AddProductPage]
class AddProductRoute extends PageRouteInfo<void> {
  const AddProductRoute({List<PageRouteInfo>? children})
      : super(
          AddProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddProductRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BooksTabPage]
class FeedTab extends PageRouteInfo<void> {
  const FeedTab({List<PageRouteInfo>? children})
      : super(
          FeedTab.name,
          initialChildren: children,
        );

  static const String name = 'FeedTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CalendarPage]
class CalendarRoute extends PageRouteInfo<void> {
  const CalendarRoute({List<PageRouteInfo>? children})
      : super(
          CalendarRoute.name,
          initialChildren: children,
        );

  static const String name = 'CalendarRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChatDetailPage]
class ChatDetailRoute extends PageRouteInfo<ChatDetailRouteArgs> {
  ChatDetailRoute({
    required Conversation conversation,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ChatDetailRoute.name,
          args: ChatDetailRouteArgs(
            conversation: conversation,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatDetailRoute';

  static const PageInfo<ChatDetailRouteArgs> page =
      PageInfo<ChatDetailRouteArgs>(name);
}

class ChatDetailRouteArgs {
  const ChatDetailRouteArgs({
    required this.conversation,
    this.key,
  });

  final Conversation conversation;

  final Key? key;

  @override
  String toString() {
    return 'ChatDetailRouteArgs{conversation: $conversation, key: $key}';
  }
}

/// generated route for
/// [ChatOptionsPage]
class ChatOptionsRoute extends PageRouteInfo<ChatOptionsRouteArgs> {
  ChatOptionsRoute({
    required Conversation conversation,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ChatOptionsRoute.name,
          args: ChatOptionsRouteArgs(
            conversation: conversation,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatOptionsRoute';

  static const PageInfo<ChatOptionsRouteArgs> page =
      PageInfo<ChatOptionsRouteArgs>(name);
}

class ChatOptionsRouteArgs {
  const ChatOptionsRouteArgs({
    required this.conversation,
    this.key,
  });

  final Conversation conversation;

  final Key? key;

  @override
  String toString() {
    return 'ChatOptionsRouteArgs{conversation: $conversation, key: $key}';
  }
}

/// generated route for
/// [ChatParticipantsPage]
class ChatParticipantsRoute extends PageRouteInfo<ChatParticipantsRouteArgs> {
  ChatParticipantsRoute({
    required Conversation conversation,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ChatParticipantsRoute.name,
          args: ChatParticipantsRouteArgs(
            conversation: conversation,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatParticipantsRoute';

  static const PageInfo<ChatParticipantsRouteArgs> page =
      PageInfo<ChatParticipantsRouteArgs>(name);
}

class ChatParticipantsRouteArgs {
  const ChatParticipantsRouteArgs({
    required this.conversation,
    this.key,
  });

  final Conversation conversation;

  final Key? key;

  @override
  String toString() {
    return 'ChatParticipantsRouteArgs{conversation: $conversation, key: $key}';
  }
}

/// generated route for
/// [CompanyInformationPage]
class CompanyInformationRoute extends PageRouteInfo<void> {
  const CompanyInformationRoute({List<PageRouteInfo>? children})
      : super(
          CompanyInformationRoute.name,
          initialChildren: children,
        );

  static const String name = 'CompanyInformationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ContactsPage]
class ContactsRoute extends PageRouteInfo<void> {
  const ContactsRoute({List<PageRouteInfo>? children})
      : super(
          ContactsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ConversationsPage]
class ConversationsRoute extends PageRouteInfo<void> {
  const ConversationsRoute({List<PageRouteInfo>? children})
      : super(
          ConversationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConversationsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CreateCompanyPage]
class CreateCompanyRoute extends PageRouteInfo<void> {
  const CreateCompanyRoute({List<PageRouteInfo>? children})
      : super(
          CreateCompanyRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateCompanyRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CreateConversationPage]
class CreateConversationRoute extends PageRouteInfo<void> {
  const CreateConversationRoute({List<PageRouteInfo>? children})
      : super(
          CreateConversationRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateConversationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CreateGroupConversationPage]
class CreateGroupConversationRoute extends PageRouteInfo<void> {
  const CreateGroupConversationRoute({List<PageRouteInfo>? children})
      : super(
          CreateGroupConversationRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateGroupConversationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FeedsPage]
class FeedsRoute extends PageRouteInfo<void> {
  const FeedsRoute({List<PageRouteInfo>? children})
      : super(
          FeedsRoute.name,
          initialChildren: children,
        );

  static const String name = 'FeedsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ForgotPassPage]
class ForgotPassRoute extends PageRouteInfo<void> {
  const ForgotPassRoute({List<PageRouteInfo>? children})
      : super(
          ForgotPassRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPassRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MenuPage]
class MenuRoute extends PageRouteInfo<void> {
  const MenuRoute({List<PageRouteInfo>? children})
      : super(
          MenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'MenuRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NotificationsPage]
class NotificationsRoute extends PageRouteInfo<void> {
  const NotificationsRoute({List<PageRouteInfo>? children})
      : super(
          NotificationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PersonalInfomationPage]
class PersonalInfomationRoute extends PageRouteInfo<void> {
  const PersonalInfomationRoute({List<PageRouteInfo>? children})
      : super(
          PersonalInfomationRoute.name,
          initialChildren: children,
        );

  static const String name = 'PersonalInfomationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfilePhotoPage]
class ProfilePhotoRoute extends PageRouteInfo<void> {
  const ProfilePhotoRoute({List<PageRouteInfo>? children})
      : super(
          ProfilePhotoRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfilePhotoRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileTabPage]
class ProfileTab extends PageRouteInfo<void> {
  const ProfileTab({List<PageRouteInfo>? children})
      : super(
          ProfileTab.name,
          initialChildren: children,
        );

  static const String name = 'ProfileTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProgramsPage]
class ProgramsRoute extends PageRouteInfo<void> {
  const ProgramsRoute({List<PageRouteInfo>? children})
      : super(
          ProgramsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProgramsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignInPage]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute({List<PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignUpPage]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute({List<PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WelcomOnboardingPage]
class WelcomOnboardingRoute extends PageRouteInfo<void> {
  const WelcomOnboardingRoute({List<PageRouteInfo>? children})
      : super(
          WelcomOnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomOnboardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WelcomePage]
class WelcomeRoute extends PageRouteInfo<void> {
  const WelcomeRoute({List<PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
