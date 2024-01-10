import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../constants/env_constants.dart';

class EnvConfig {
  const EnvConfig._();

  static late final Map<String, String> environment;

  static String get apiUrl => environment[EnvConstants.apiUrlKey]!;
  static String get blobStorageUrl => environment[EnvConstants.blobStorageUrlKey]!;
  static String get signalRUrl => environment[EnvConstants.signalRUrlKey]!;
  static String get appKey => environment[EnvConstants.appKey]!;

  static Future<void> init({Flavor flavor = Flavor.dev}) async {
    String envFileName;
    switch (flavor) {
      case Flavor.dev:
        envFileName = EnvConstants.envFileDev;
        break;
    }
    await dotenv.load(fileName: envFileName);
    environment = dotenv.env;
  }
}
