import 'package:injectable/injectable.dart';

import '../../../../../core/configs/configs.dart';
import '../interceptor/interceptor.dart';
import 'base/rest_api_client.dart';

@lazySingleton
class AuthenticatedRestApiClient extends RestApiClient {
  AuthenticatedRestApiClient({
    required AccessTokenInterceptor accessTokenInterceptor,
    // required RefreshTokenInterceptor refreshTokenInterceptor,
  }) : super(
          baseUrl: EnvConfig.apiUrl,
          headers: {'appKey': EnvConfig.appKey},
          interceptors: [
            accessTokenInterceptor,
            // refreshTokenInterceptor,
          ],
        );
}
