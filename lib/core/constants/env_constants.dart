enum Flavor { dev }

class EnvConstants {
  const EnvConstants._();

  static const String envFileDev = 'assets/env/.env.example';

  // Key for environment variables
  static const String apiUrlKey = 'API_URL';
  static const String blobStorageUrlKey = 'BLOB_STORAGE_URL';
  static const String signalRUrlKey = 'SIGNALR_URL';
  static const String appKey = 'APP_KEY';
}
