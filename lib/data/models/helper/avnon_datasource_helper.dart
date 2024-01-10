import '../../../core/configs/configs.dart';

class AvnonDataSourceHelper {
  const AvnonDataSourceHelper._();

  static String addBlobStoragePrefix(String url) {
    return '${EnvConfig.blobStorageUrl}/$url';
  }
}
