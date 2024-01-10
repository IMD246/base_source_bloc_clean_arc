class RouteList {
  const RouteList._();

  static const String privacyPolicy = 'https://avnon.co/privacy';
  static const String termsOfService = 'https://avnon.co/our-terms';

  // auth
  static const String welcome = '/welcome';
  static const String signUp = '/signUp';
  static const String signIn = '/signIn';
  static const String forgotPassword = '/forgotPassword';
  // home
  static const String home = '/';
  static const String profileTab = 'profile';
  static const String feedTab = 'feed';
  static const String calendarTab = 'calendar';
  static const String contactsTab = 'contacts';
  static const String notificationsTab = 'notifications';
  static const String menuTab = 'menu';
  // chat
  static const String conversationsList = '/conversations';
  static const String createConversation = '/conversation/create';
  static const String chatDetail = '/chat-detail';
  static const String chatOptions = '/chat-options';
  static const String chatParticipants = '/chat-participants';
  static const String chatMedia = '/chat-media';
  // programs
  static const String programs = '/programs';

  //onboarding
  static const String onboardingPersonalInfomation =
      '/onboarding-perosonal-information';
  static const String onboardingProfilePhoto = '/onboarding-profile-photo';
  static const String onboardingCompanyInformation =
      '/onboarding-company-information';
  static const String onboardingCreateCompany = '/onboarding-create-company';
  static const String onboardingAddProduct = '/onboarding-add-product';
  static const String onboardingWelcome = '/onboarding-welcome';
}
