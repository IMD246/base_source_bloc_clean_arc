import 'package:injectable/injectable.dart';

import '../../domain/domain.dart';
import '../datasources/datasources.dart';

@LazySingleton(as: ReferenceRepository)
class ReferenceRepositoryImpl implements ReferenceRepository {
  ReferenceRepositoryImpl(this._dataSource);

  final ReferencesDataSource _dataSource;

  @override
  Future<List<City>> getCityList(String countryID) async {
    final response = await _dataSource.getCityList(countryID);

    return response.map((e) => e.toEntity()).toList();
  }

  @override
  Future<List<Country>> getCountryList() async {
    final response = await _dataSource.getCountryList();

    return response.map((e) => e.toEntity()).toList();
  }

  @override
  Future<List<CompanyProfile>> getCompanyProfileList() async {
    final response = await _dataSource.getCompanyProfileList();

    return response.map((e) => e.toEntity()).toList();
  }

  @override
  Future<List<Industry>> getIndustryList() async {
    final response = await _dataSource.getIndustryList();

    return response.map((e) => e.toEntity()).toList();
  }

  @override
  Future<List<ProductStatus>> getProductStatusList(
    int productTypeId,
  ) async {
    final response = await _dataSource.getProductStatusList(productTypeId);

    return response.map((e) => e.toEntity()).toList();
  }
}
