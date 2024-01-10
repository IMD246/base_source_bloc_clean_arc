part of 'add_product_bloc.dart';

@freezed
class AddProductState extends BaseState with _$AddProductState {
  const AddProductState._();

  factory AddProductState.initial() => const AddProductState();

  const factory AddProductState({
    @Default(false) bool isSubmitting,
    @Default(0) int submitCount,
    @Default([]) List<ProductStatus> productStatusList,
    @Default('') String productName,
    @Default('') String productDescription,
    @Default(null) ProductType? productCategory,
    @Default(null) ProductStatus? selectedProductStatus,
  }) = _AddProductState;

  bool get hadBeenSubmitted => submitCount > 0;
  bool get isFormValid {
    return productName.isNotEmpty &&
        productDescription.isNotEmpty &&
        productCategory != null &&
        selectedProductStatus != null;
  }
}
