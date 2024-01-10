import 'package:injectable/injectable.dart';

import '../../../../../core/configs/configs.dart';
import 'base/rest_api_client.dart';

@lazySingleton
class UnAuthenticatedRestApiClient extends RestApiClient {
  UnAuthenticatedRestApiClient()
      : super(
          baseUrl: EnvConfig.apiUrl,
          headers: {'appKey': EnvConfig.appKey},
        );
}
