import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../core/configs/di/di.dart';
import '../../core/utils/utils.dart';
import '../models/chat/chat_categories_enum.dart';
import '../models/company_contact_data.dart';
import '../models/company_owner_data.dart';
import '../models/company_product_data.dart';
import '../models/create_company_data.dart';
import '../models/helper/avnon_datasource_helper.dart';
import 'datasources.dart';
import 'gateway/gateway.dart';

@lazySingleton
class CompanyDataSource {
  CompanyDataSource(this._authenticatedClient);

  final AuthenticatedRestApiClient _authenticatedClient;

  Future<CompanyContactData> createCompanyContact({
    required String city,
    required String companyID,
    required String contactID,
    required String countryID,
    required String dateEmployed,
    required String designation,
    required int employmentTypeID,
  }) {
    final body = <String, dynamic>{
      'city': city,
      'companyID': companyID,
      'contactID': contactID,
      'countryID': countryID,
      'dateEmployed': dateEmployed,
      'designation': designation,
      'employmentTypeID': employmentTypeID,
      'primaryCompany': true,
    };

    return _authenticatedClient.post(
      '/company/contact',
      body: body,
      decoder: CompanyContactData.fromJson,
    );
  }

  Future<CreateCompanyData> createCompany({
    required String organisation,
    required String companyName,
    required int companyTypeID,
    required String telephoneNumber,
    required String website,
    String? dateRegistered,
  }) {
    final body = <String, dynamic>{
      'companyMission': organisation,
      'companyName': companyName,
      'companyTypeID': companyTypeID,
      'telephoneNumber': telephoneNumber,
      'website': website,
      'dateRegistered': dateRegistered,
    };

    return _authenticatedClient.post(
      '/company',
      body: body,
      decoder: CreateCompanyData.fromJson,
    );
  }

  Future<String> uploadCompanyLogo({
    required File file,
    required String contactID,
    required String companyID,
  }) async {
    final query = {
      'documentCategoryID': DocumentLinkCategory.smeResource.value,
      'referenceID': companyID,
      'documentUploadedByID': contactID,
      'documentFolderID': 1,
      'reference2ID': 0,
      'IsStream': false,
      'contactID': 0,
      'companyID': 0,
    };

    final body = {'file': file};

    final listResult = await _authenticatedClient.postMultiForm(
      '/Document',
      queryParameters: query,
      body: body,
      successResponseMapperType: SuccessResponseMapperType.jsonArray,
      decoder: (data) => AvnonDataSourceHelper.addBlobStoragePrefix(data['documentPath']),
    );

    return listResult.first;
  }

  Future<CompanyOwnerData> updateCompanyOwner({
    required int companyOwnerContactID,
    required int companyID,
  }) {
    final body = <String, dynamic>{
      'companyID': companyID,
      'companyOwnerContactID': companyOwnerContactID,
    };

    return _authenticatedClient.put(
      '/company/owner',
      body: body,
      decoder: CompanyOwnerData.fromJson,
    );
  }

  Future<List<CompanyProductData>> getCompanyProductList(
    int companyID,
  ) async {
    final token = await (await getIt.getAsync<AppPreferences>()).getAccessToken();
    if (kDebugMode) {
      LogUtils.getLogger('AccessToken').i(token);
    }

    return _authenticatedClient.get(
      '/Company/product',
      queryParameters: <String, dynamic>{
        'companyProductID': 0,
        'companyID': companyID,
      },
      decoder: CompanyProductData.fromJson,
      successResponseMapperType: SuccessResponseMapperType.jsonArray,
    );
  }

  Future<CreateCompanyData> createCompanyProduct({
    required String productName,
    required String productPitch,
    required int companyProductStatusID,
    required int productCategoryID,
    required int companyID,
  }) {
    final body = <String, dynamic>{
      'companyID': companyID,
      'companyProductStatusID': companyProductStatusID,
      'productCategoryID': productCategoryID,
      'productName': productName,
      'productPitch': productPitch,
    };

    return _authenticatedClient.post(
      '/company/product',
      body: body,
      decoder: CreateCompanyData.fromJson,
    );
  }
}
