import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import '../../../core/configs/di/di.dart';
import '../../../core/constants/constants.dart';
import '../../../domain/domain.dart';
import '../../common_blocs/app/app_bloc.dart';

@injectable
class AuthGuard extends AutoRouteGuard {
  const AuthGuard();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (getIt.get<AppBloc>().state.isLoggedIn) {
      final currentUser = getIt.get<AppBloc>().state.currentUser!;
      if (currentUser.onboarding) {
        resolver.next();
      } else {
        _handleOnboardingFlow(router);
        resolver.next(false);
      }
    } else {
      router.pushNamed(RouteList.welcome);
      resolver.next(false);
    }
  }

  void _handleOnboardingFlow(StackRouter router) {
    final currentOnboardingStep = getIt.get<AppBloc>().state.onboardingStep;
    if (currentOnboardingStep != null) {
      if (currentOnboardingStep.userOnboardingStepID ==
          OnboardingStepEnum.companyAdd.value) {
        router.replaceNamed(RouteList.onboardingAddProduct);

        return;
      }
      if (currentOnboardingStep.userOnboardingStepID ==
          OnboardingStepEnum.productAdd.value) {
        router.replaceNamed(RouteList.onboardingWelcome);

        return;
      }
    }
    router.replaceNamed(RouteList.onboardingPersonalInfomation);
  }
}
