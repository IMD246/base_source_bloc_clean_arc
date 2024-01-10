import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/entities.dart';
import 'base/entity_mappable.dart';

part 'product_status_data.freezed.dart';
part 'product_status_data.g.dart';

@freezed
class ProductStatusData with _$ProductStatusData, EntityMappable<ProductStatus> {
  const ProductStatusData._();
  const factory ProductStatusData({
    int? companyProductStatusID,
    String? companyProductStatus,
    String? companyProductStatusDescription,
    String? companyProductStatusObjectives,
    int? productTypeID,
    bool? verified,
  }) = _ProductStatusData;

  factory ProductStatusData.fromJson(Map<String, dynamic> json) => _$ProductStatusDataFromJson(json);

  @override
  ProductStatus toEntity() {
    return ProductStatus(
      companyProductStatusID: companyProductStatusID,
      companyProductStatus: companyProductStatus,
      companyProductStatusDescription: companyProductStatusDescription,
      companyProductStatusObjectives: companyProductStatusObjectives,
      productTypeID: productTypeID,
      verified: verified,
    );
  }
}
