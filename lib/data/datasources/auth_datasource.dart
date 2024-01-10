import 'package:injectable/injectable.dart';

import '../models/models.dart';
import 'gateway/api/clients/clients.dart';

@lazySingleton
class AuthDataSource {
  AuthDataSource(this._unAuthApiClient);

  final UnAuthenticatedRestApiClient _unAuthApiClient;

  Future<void> register({
    required String firstName,
    required String surName,
    required String email,
    required String password,
  }) {
    return _unAuthApiClient.post(
      '/user/register',
      body: {
        'firstName': firstName,
        'surName': surName,
        'email': email,
        'password': password,
        'languageId': 1,
        'registrationBaseURL': '',
        'verified': 0,
        'verifyUrl': 'https://avnon.co/account-verify',
      },
      decoder: (_) {},
    );
  }

  Future<LoginResponseData> login({required String email, required String password}) {
    return _unAuthApiClient.post(
      '/user/token',
      body: {
        'email': email,
        'password': password,
      },
      decoder: LoginResponseData.fromJson,
    );
  }

  Future<void> logout() {
    throw UnimplementedError();
  }

  Future<void> forgotPassword(String email) {
    return _unAuthApiClient.post(
      '/user/passwordreset',
      body: {
        'email': email,
        'verifyUrl': 'https://avnon.co/reset-password',
      },
      decoder: (_) {},
    );
  }

  Future<void> resetPassword({required String token, required String email, required String password}) {
    throw UnimplementedError();
  }
}
