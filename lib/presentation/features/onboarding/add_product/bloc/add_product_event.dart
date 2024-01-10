part of 'add_product_bloc.dart';

abstract class AddProductEvent extends BaseEvent {}

@freezed
class NextSubmitted extends AddProductEvent with _$NextSubmitted {
  const factory NextSubmitted() = _NextSubmitted;
}

@freezed
class ProductNameChanged extends AddProductEvent with _$ProductNameChanged {
  const factory ProductNameChanged(String productName) = _ProductNameChanged;
}

@freezed
class ProductDescriptionChanged extends AddProductEvent with _$ProductDescriptionChanged {
  const factory ProductDescriptionChanged(String productDescription) = _ProductDescriptionChanged;
}

@freezed
class ProductCategoryChanged extends AddProductEvent with _$ProductCategoryChanged {
  const factory ProductCategoryChanged(ProductType productCategory) = _ProductCategoryChanged;
}

@freezed
class ProductStatusChanged extends AddProductEvent with _$ProductStatusChanged {
  const factory ProductStatusChanged(ProductStatus productStatus) = _ProductStatusChanged;
}
