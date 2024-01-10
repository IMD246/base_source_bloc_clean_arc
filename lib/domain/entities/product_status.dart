import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_status.freezed.dart';
part 'product_status.g.dart';

@freezed
class ProductStatus with _$ProductStatus {
  const factory ProductStatus({
    int? companyProductStatusID,
    String? companyProductStatus,
    String? companyProductStatusDescription,
    String? companyProductStatusObjectives,
    int? productTypeID,
    bool? verified,
  }) = _ProductStatus;

  factory ProductStatus.fromJson(Map<String, dynamic> json) => _$ProductStatusFromJson(json);
}
