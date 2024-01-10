import 'package:injectable/injectable.dart';

import '../models/auth/refresh_token_data.dart';
import 'app_preferences.dart';
import 'gateway/api/clients/clients.dart';

@lazySingleton
class RefreshTokenDatasource {
  RefreshTokenDatasource(this._client, this._preferences);

  final UnAuthenticatedRestApiClient _client;
  final AppPreferences _preferences;

  Future<RefreshTokenData> refreshToken() async {
    final token = await _preferences.getRefreshToken();

    return _client.post(
      '/auth/refresh',
      headers: <String, dynamic>{'Authorization': 'Bearer $token'},
      decoder: RefreshTokenData.fromJson,
    );
  }
}
