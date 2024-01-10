import 'package:injectable/injectable.dart';

import '../../domain/domain.dart';
import '../datasources/datasources.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(
    this._appPreferences,
    this._dataSource,
  );

  final AppPreferences _appPreferences;
  final AuthDataSource _dataSource;

  @override
  bool get isLoggedIn {
    return true;
  }

  @override
  Future<void> register({
    required String firstName,
    required String surName,
    required String email,
    required String password,
  }) {
    return _dataSource.register(
      firstName: firstName,
      surName: surName,
      email: email,
      password: password,
    );
  }

  @override
  Future<void> login({required String email, required String password}) async {
    final response = await _dataSource.login(email: email, password: password);
    await _appPreferences.saveAccessToken(response.token);
  }

  @override
  Future<void> forgotPassword(String email) {
    return _dataSource.forgotPassword(email);
  }

  @override
  Future<void> clearTokens() {
    return _appPreferences.clearAllTokens();
  }

  @override
  Future<void> logout() async {}
}
