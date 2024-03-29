import 'dart:ui';

class LocaleConstants {
  LocaleConstants._();

  static final supportedLocales = _supportedLocalesCode.map((e) => Locale(e)).toList();
  static const _supportedLocalesCode = ['en'];

  static const String defaultLocale = 'en';
}
