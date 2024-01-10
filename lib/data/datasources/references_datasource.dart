import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../core/configs/di/di.dart';
import '../../core/utils/log_utils.dart';
import '../models/city_data.dart';
import '../models/company_profile_data.dart';
import '../models/country_data.dart';
import '../models/industry_data.dart';
import '../models/product_status_data.dart';
import 'app_preferences.dart';
import 'gateway/gateway.dart';

@lazySingleton
class ReferencesDataSource {
  ReferencesDataSource(this._authenticatedClient);

  final AuthenticatedRestApiClient _authenticatedClient;

  Future<List<CountryData>> getCountryList() async {
    final token = await (await getIt.getAsync<AppPreferences>()).getAccessToken();
    if (kDebugMode) {
      LogUtils.getLogger('AccessToken').i(token);
    }

    return _authenticatedClient.get(
      '/List/country',
      decoder: CountryData.fromJson,
      successResponseMapperType: SuccessResponseMapperType.jsonArray,
    );
  }

  Future<List<CityData>> getCityList(String countryID) async {
    final token = await (await getIt.getAsync<AppPreferences>()).getAccessToken();
    if (kDebugMode) {
      LogUtils.getLogger('AccessToken').i(token);
    }

    return _authenticatedClient.get(
      '/List/city',
      queryParameters: <String, dynamic>{
        'countryID': countryID,
      },
      decoder: CityData.fromJson,
      successResponseMapperType: SuccessResponseMapperType.jsonArray,
    );
  }

  Future<List<CompanyProfileData>> getCompanyProfileList() async {
    final token = await (await getIt.getAsync<AppPreferences>()).getAccessToken();
    if (kDebugMode) {
      LogUtils.getLogger('AccessToken').i(token);
    }

    return _authenticatedClient.get(
      '/Company',
      queryParameters: <String, dynamic>{
        'classificationID': 0,
      },
      decoder: CompanyProfileData.fromJson,
      successResponseMapperType: SuccessResponseMapperType.jsonArray,
    );
  }

  Future<List<IndustryData>> getIndustryList() async {
    final token = await (await getIt.getAsync<AppPreferences>()).getAccessToken();
    if (kDebugMode) {
      LogUtils.getLogger('AccessToken').i(token);
    }

    return _authenticatedClient.get(
      '/industry/all',
      decoder: IndustryData.fromJson,
      successResponseMapperType: SuccessResponseMapperType.jsonArray,
    );
  }

  Future<List<ProductStatusData>> getProductStatusList(
    int productTypeId,
  ) async {
    final token = await (await getIt.getAsync<AppPreferences>()).getAccessToken();
    if (kDebugMode) {
      LogUtils.getLogger('AccessToken').i(token);
    }

    return _authenticatedClient.get(
      '/Company/product/status',
      queryParameters: <String, dynamic>{
        'productTypeId': productTypeId,
      },
      decoder: ProductStatusData.fromJson,
      successResponseMapperType: SuccessResponseMapperType.jsonArray,
    );
  }
}
