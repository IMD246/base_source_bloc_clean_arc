import '../entities/entities.dart';

abstract class ReferenceRepository {
  Future<List<Country>> getCountryList();
  Future<List<City>> getCityList(String countryID);
  Future<List<CompanyProfile>> getCompanyProfileList();
  Future<List<Industry>> getIndustryList();
  Future<List<ProductStatus>> getProductStatusList(int productTypeId);
}
