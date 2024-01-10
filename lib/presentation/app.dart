import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/configs/configs.dart';
import '../core/constants/constants.dart';
import '../core/helpers/helpers.dart';
import 'common_blocs/app/app_bloc.dart';
import 'resource/styles/styles.dart';
import 'routing/routing.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class _MyAppState extends State<MyApp> {
  // final router = AppRouter(isLoggedIn: true);

  final _appBloc = getIt.get<AppBloc>();

  late LifecycleEventHandler _lifecycleEventHandler;

  @override
  void initState() {
    _lifecycleEventHandler = LifecycleEventHandler(
      resumeCallBack: () async {},
      suspendingCallBack: () async {},
    );

    WidgetsBinding.instance.addObserver(_lifecycleEventHandler);

    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(_lifecycleEventHandler);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(
        DeviceConstants.designDeviceWidth,
        DeviceConstants.designDeviceHeight,
      ),
      builder: (context, _) {
        return BlocProvider(
          create: (_) => _appBloc..add(const AppInitiated()),
          child: BlocBuilder<AppBloc, AppState>(
            builder: (context, state) {
              return MaterialApp.router(
                builder: (context, child) {
                  final MediaQueryData data = MediaQuery.of(context);

                  return MediaQuery(
                    data: data.copyWith(textScaleFactor: 1.0),
                    child: child ?? AppSpacing.emptyBox,
                  );
                },
                routerConfig: getIt.get<AppRouter>().config(
                      navigatorObservers: () =>
                          [AppNavigatorObserver(), routeObserver],
                      deepLinkBuilder: (deepLink) {
                        // config deep link here
                        return DeepLink.defaultPath;
                      },
                    ),
                debugShowCheckedModeBanner: false,
                locale: Locale(state.locale),
                supportedLocales: LocaleConstants.supportedLocales,
                localeResolutionCallback:
                    (Locale? locale, Iterable<Locale> supportedLocales) =>
                        supportedLocales.contains(locale)
                            ? locale
                            : const Locale(LocaleConstants.defaultLocale),
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                theme: ThemeData(
                  primaryColor: AppColors.primary,
                  textSelectionTheme: const TextSelectionThemeData(
                    cursorColor: AppColors.primary,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
