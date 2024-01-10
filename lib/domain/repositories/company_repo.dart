import 'dart:io';

import '../entities/entities.dart';

abstract class CompanyRepository {
  Future<CompanyContact> createCompanyContact({
    required String city,
    required String companyID,
    required String contactID,
    required String countryID,
    required String dateEmployed,
    required String designation,
    required int employmentTypeID,
  });

  Future<CreateCompanyResponse> createCompany({
    required String organisation,
    required String companyName,
    required int companyTypeID,
    required String telephoneNumber,
    required String website,
    required String? dateRegistered,
  });

  Future<String> uploadCompanyLogo({
    required File file,
    required String contactID,
    required String companyID,
  });

  Future<CompanyOwner> updateCompanyOwner({
    required int companyOwnerContactID,
    required int companyID,
  });

  Future<List<CompanyProduct>> getCompanyProductList(int companyID);

  Future<CreateCompanyResponse> createCompanyProduct({
    required String productName,
    required String productPitch,
    required int companyProductStatusID,
    required int productCategoryID,
    required int companyID,
  });
}
