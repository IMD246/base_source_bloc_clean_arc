import 'package:injectable/injectable.dart';

import '../../core/exceptions/api_exception.dart';
import '../datasources/app_preferences.dart';
import '../datasources/refresh_token_datasource.dart';

@lazySingleton
class RefreshTokenRepository {
  RefreshTokenRepository(this._datasource, this._appPreferences);

  final RefreshTokenDatasource _datasource;
  final AppPreferences _appPreferences;

  // Refresh the access and save it to the preferences
  Future<void> refreshToken() async {
    try {
      final refreshToken = await _appPreferences.getRefreshToken();

      if (refreshToken.isNotEmpty) {
        final data = await _datasource.refreshToken();
        await _appPreferences.saveAccessToken(data.accessToken);
      }
    } on ApiException catch (e) {
      throw ApiException(ApiExceptionKind.refreshTokenFailed, e);
    }
  }
}
