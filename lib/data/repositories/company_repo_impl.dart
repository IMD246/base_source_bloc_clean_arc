import 'dart:io';

import 'package:injectable/injectable.dart';

import '../../domain/domain.dart';
import '../../domain/repositories/company_repo.dart';
import '../datasources/company_datasource.dart';

@LazySingleton(as: CompanyRepository)
class CompanyRepositoryImpl implements CompanyRepository {
  CompanyRepositoryImpl(this._dataSource);

  final CompanyDataSource _dataSource;

  @override
  Future<CompanyContact> createCompanyContact({
    required String city,
    required String companyID,
    required String contactID,
    required String countryID,
    required String dateEmployed,
    required String designation,
    required int employmentTypeID,
  }) async {
    final response = await _dataSource.createCompanyContact(
      city: city,
      companyID: companyID,
      contactID: contactID,
      countryID: countryID,
      dateEmployed: dateEmployed,
      designation: designation,
      employmentTypeID: employmentTypeID,
    );

    return response.toEntity();
  }

  @override
  Future<CreateCompanyResponse> createCompany({
    required String organisation,
    required String companyName,
    required int companyTypeID,
    required String telephoneNumber,
    required String website,
    required String? dateRegistered,
  }) async {
    final response = await _dataSource.createCompany(
      organisation: organisation,
      companyName: companyName,
      companyTypeID: companyTypeID,
      telephoneNumber: telephoneNumber,
      website: website,
      dateRegistered: dateRegistered,
    );

    return response.toEntity();
  }

  @override
  Future<String> uploadCompanyLogo({
    required File file,
    required String contactID,
    required String companyID,
  }) {
    return _dataSource.uploadCompanyLogo(
      file: file,
      contactID: contactID,
      companyID: companyID,
    );
  }

  @override
  Future<CompanyOwner> updateCompanyOwner({
    required int companyOwnerContactID,
    required int companyID,
  }) async {
    final response = await _dataSource.updateCompanyOwner(
      companyOwnerContactID: companyOwnerContactID,
      companyID: companyID,
    );

    return response.toEntity();
  }

  @override
  Future<List<CompanyProduct>> getCompanyProductList(
    int companyID,
  ) async {
    final response = await _dataSource.getCompanyProductList(companyID);

    return response.map((e) => e.toEntity()).toList();
  }

  @override
  Future<CreateCompanyResponse> createCompanyProduct({
    required String productName,
    required String productPitch,
    required int companyProductStatusID,
    required int productCategoryID,
    required int companyID,
  }) async {
    final response = await _dataSource.createCompanyProduct(
      productName: productName,
      productPitch: productPitch,
      companyProductStatusID: companyProductStatusID,
      productCategoryID: productCategoryID,
      companyID: companyID,
    );

    return response.toEntity();
  }
}
