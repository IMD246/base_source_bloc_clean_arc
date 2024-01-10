abstract class AuthRepository {
  bool get isLoggedIn;

  Future<void> register({
    required String firstName,
    required String surName,
    required String email,
    required String password,
  });

  Future<void> login({required String email, required String password});

  Future<void> forgotPassword(String email);

  Future<void> clearTokens();

  Future<void> logout();
}
