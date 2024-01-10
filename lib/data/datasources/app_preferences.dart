import '../../core/constants/constants.dart';
import '../../domain/entities/user.dart';
import 'gateway/preference/base_preference.dart';

class AppPreferences extends BasePreference<dynamic> {
  final boxName = StorageConstants.appPreferencesBox;

  Future<AppPreferences> getInstance() async {
    await setup(boxName);

    return this;
  }

  Future<void> saveIsLoggedIn(bool value) async {
    return put(StorageConstants.isLoggedInKey, value);
  }

  bool isLoggedIn() {
    return get(StorageConstants.isLoggedInKey, defaultValue: false);
  }

  Future<void> saveAccessToken(String value) async {
    return put(StorageConstants.accessTokenKey, value, encrypted: true);
  }

  Future<String> getAccessToken() async {
    return await getEncrypted(StorageConstants.accessTokenKey, defaultValue: '');
  }

  Future<void> saveRefreshToken(String value) async {
    return put(StorageConstants.refreshTokenKey, value, encrypted: true);
  }

  Future<String> getRefreshToken() async {
    return await getEncrypted(StorageConstants.refreshTokenKey, defaultValue: '');
  }

  Future<void> clearAllTokens() async {
    await delete(StorageConstants.accessTokenKey);
    await delete(StorageConstants.refreshTokenKey);
  }

  Future<void> saveCurrentUser(User user) {
    return put(StorageConstants.currentUserKey, user);
  }
}
