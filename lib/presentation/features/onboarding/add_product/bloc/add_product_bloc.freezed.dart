// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NextSubmitted {}

/// @nodoc
abstract class $NextSubmittedCopyWith<$Res> {
  factory $NextSubmittedCopyWith(
          NextSubmitted value, $Res Function(NextSubmitted) then) =
      _$NextSubmittedCopyWithImpl<$Res, NextSubmitted>;
}

/// @nodoc
class _$NextSubmittedCopyWithImpl<$Res, $Val extends NextSubmitted>
    implements $NextSubmittedCopyWith<$Res> {
  _$NextSubmittedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NextSubmittedImplCopyWith<$Res> {
  factory _$$NextSubmittedImplCopyWith(
          _$NextSubmittedImpl value, $Res Function(_$NextSubmittedImpl) then) =
      __$$NextSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextSubmittedImplCopyWithImpl<$Res>
    extends _$NextSubmittedCopyWithImpl<$Res, _$NextSubmittedImpl>
    implements _$$NextSubmittedImplCopyWith<$Res> {
  __$$NextSubmittedImplCopyWithImpl(
      _$NextSubmittedImpl _value, $Res Function(_$NextSubmittedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextSubmittedImpl implements _NextSubmitted {
  const _$NextSubmittedImpl();

  @override
  String toString() {
    return 'NextSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _NextSubmitted implements NextSubmitted {
  const factory _NextSubmitted() = _$NextSubmittedImpl;
}

/// @nodoc
mixin _$ProductNameChanged {
  String get productName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductNameChangedCopyWith<ProductNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductNameChangedCopyWith<$Res> {
  factory $ProductNameChangedCopyWith(
          ProductNameChanged value, $Res Function(ProductNameChanged) then) =
      _$ProductNameChangedCopyWithImpl<$Res, ProductNameChanged>;
  @useResult
  $Res call({String productName});
}

/// @nodoc
class _$ProductNameChangedCopyWithImpl<$Res, $Val extends ProductNameChanged>
    implements $ProductNameChangedCopyWith<$Res> {
  _$ProductNameChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = null,
  }) {
    return _then(_value.copyWith(
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductNameChangedImplCopyWith<$Res>
    implements $ProductNameChangedCopyWith<$Res> {
  factory _$$ProductNameChangedImplCopyWith(_$ProductNameChangedImpl value,
          $Res Function(_$ProductNameChangedImpl) then) =
      __$$ProductNameChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String productName});
}

/// @nodoc
class __$$ProductNameChangedImplCopyWithImpl<$Res>
    extends _$ProductNameChangedCopyWithImpl<$Res, _$ProductNameChangedImpl>
    implements _$$ProductNameChangedImplCopyWith<$Res> {
  __$$ProductNameChangedImplCopyWithImpl(_$ProductNameChangedImpl _value,
      $Res Function(_$ProductNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = null,
  }) {
    return _then(_$ProductNameChangedImpl(
      null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductNameChangedImpl implements _ProductNameChanged {
  const _$ProductNameChangedImpl(this.productName);

  @override
  final String productName;

  @override
  String toString() {
    return 'ProductNameChanged(productName: $productName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductNameChangedImpl &&
            (identical(other.productName, productName) ||
                other.productName == productName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductNameChangedImplCopyWith<_$ProductNameChangedImpl> get copyWith =>
      __$$ProductNameChangedImplCopyWithImpl<_$ProductNameChangedImpl>(
          this, _$identity);
}

abstract class _ProductNameChanged implements ProductNameChanged {
  const factory _ProductNameChanged(final String productName) =
      _$ProductNameChangedImpl;

  @override
  String get productName;
  @override
  @JsonKey(ignore: true)
  _$$ProductNameChangedImplCopyWith<_$ProductNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductDescriptionChanged {
  String get productDescription => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductDescriptionChangedCopyWith<ProductDescriptionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDescriptionChangedCopyWith<$Res> {
  factory $ProductDescriptionChangedCopyWith(ProductDescriptionChanged value,
          $Res Function(ProductDescriptionChanged) then) =
      _$ProductDescriptionChangedCopyWithImpl<$Res, ProductDescriptionChanged>;
  @useResult
  $Res call({String productDescription});
}

/// @nodoc
class _$ProductDescriptionChangedCopyWithImpl<$Res,
        $Val extends ProductDescriptionChanged>
    implements $ProductDescriptionChangedCopyWith<$Res> {
  _$ProductDescriptionChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productDescription = null,
  }) {
    return _then(_value.copyWith(
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDescriptionChangedImplCopyWith<$Res>
    implements $ProductDescriptionChangedCopyWith<$Res> {
  factory _$$ProductDescriptionChangedImplCopyWith(
          _$ProductDescriptionChangedImpl value,
          $Res Function(_$ProductDescriptionChangedImpl) then) =
      __$$ProductDescriptionChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String productDescription});
}

/// @nodoc
class __$$ProductDescriptionChangedImplCopyWithImpl<$Res>
    extends _$ProductDescriptionChangedCopyWithImpl<$Res,
        _$ProductDescriptionChangedImpl>
    implements _$$ProductDescriptionChangedImplCopyWith<$Res> {
  __$$ProductDescriptionChangedImplCopyWithImpl(
      _$ProductDescriptionChangedImpl _value,
      $Res Function(_$ProductDescriptionChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productDescription = null,
  }) {
    return _then(_$ProductDescriptionChangedImpl(
      null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductDescriptionChangedImpl implements _ProductDescriptionChanged {
  const _$ProductDescriptionChangedImpl(this.productDescription);

  @override
  final String productDescription;

  @override
  String toString() {
    return 'ProductDescriptionChanged(productDescription: $productDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDescriptionChangedImpl &&
            (identical(other.productDescription, productDescription) ||
                other.productDescription == productDescription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDescriptionChangedImplCopyWith<_$ProductDescriptionChangedImpl>
      get copyWith => __$$ProductDescriptionChangedImplCopyWithImpl<
          _$ProductDescriptionChangedImpl>(this, _$identity);
}

abstract class _ProductDescriptionChanged implements ProductDescriptionChanged {
  const factory _ProductDescriptionChanged(final String productDescription) =
      _$ProductDescriptionChangedImpl;

  @override
  String get productDescription;
  @override
  @JsonKey(ignore: true)
  _$$ProductDescriptionChangedImplCopyWith<_$ProductDescriptionChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductCategoryChanged {
  ProductType get productCategory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCategoryChangedCopyWith<ProductCategoryChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoryChangedCopyWith<$Res> {
  factory $ProductCategoryChangedCopyWith(ProductCategoryChanged value,
          $Res Function(ProductCategoryChanged) then) =
      _$ProductCategoryChangedCopyWithImpl<$Res, ProductCategoryChanged>;
  @useResult
  $Res call({ProductType productCategory});
}

/// @nodoc
class _$ProductCategoryChangedCopyWithImpl<$Res,
        $Val extends ProductCategoryChanged>
    implements $ProductCategoryChangedCopyWith<$Res> {
  _$ProductCategoryChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productCategory = null,
  }) {
    return _then(_value.copyWith(
      productCategory: null == productCategory
          ? _value.productCategory
          : productCategory // ignore: cast_nullable_to_non_nullable
              as ProductType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductCategoryChangedImplCopyWith<$Res>
    implements $ProductCategoryChangedCopyWith<$Res> {
  factory _$$ProductCategoryChangedImplCopyWith(
          _$ProductCategoryChangedImpl value,
          $Res Function(_$ProductCategoryChangedImpl) then) =
      __$$ProductCategoryChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductType productCategory});
}

/// @nodoc
class __$$ProductCategoryChangedImplCopyWithImpl<$Res>
    extends _$ProductCategoryChangedCopyWithImpl<$Res,
        _$ProductCategoryChangedImpl>
    implements _$$ProductCategoryChangedImplCopyWith<$Res> {
  __$$ProductCategoryChangedImplCopyWithImpl(
      _$ProductCategoryChangedImpl _value,
      $Res Function(_$ProductCategoryChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productCategory = null,
  }) {
    return _then(_$ProductCategoryChangedImpl(
      null == productCategory
          ? _value.productCategory
          : productCategory // ignore: cast_nullable_to_non_nullable
              as ProductType,
    ));
  }
}

/// @nodoc

class _$ProductCategoryChangedImpl implements _ProductCategoryChanged {
  const _$ProductCategoryChangedImpl(this.productCategory);

  @override
  final ProductType productCategory;

  @override
  String toString() {
    return 'ProductCategoryChanged(productCategory: $productCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductCategoryChangedImpl &&
            (identical(other.productCategory, productCategory) ||
                other.productCategory == productCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductCategoryChangedImplCopyWith<_$ProductCategoryChangedImpl>
      get copyWith => __$$ProductCategoryChangedImplCopyWithImpl<
          _$ProductCategoryChangedImpl>(this, _$identity);
}

abstract class _ProductCategoryChanged implements ProductCategoryChanged {
  const factory _ProductCategoryChanged(final ProductType productCategory) =
      _$ProductCategoryChangedImpl;

  @override
  ProductType get productCategory;
  @override
  @JsonKey(ignore: true)
  _$$ProductCategoryChangedImplCopyWith<_$ProductCategoryChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductStatusChanged {
  ProductStatus get productStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductStatusChangedCopyWith<ProductStatusChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStatusChangedCopyWith<$Res> {
  factory $ProductStatusChangedCopyWith(ProductStatusChanged value,
          $Res Function(ProductStatusChanged) then) =
      _$ProductStatusChangedCopyWithImpl<$Res, ProductStatusChanged>;
  @useResult
  $Res call({ProductStatus productStatus});

  $ProductStatusCopyWith<$Res> get productStatus;
}

/// @nodoc
class _$ProductStatusChangedCopyWithImpl<$Res,
        $Val extends ProductStatusChanged>
    implements $ProductStatusChangedCopyWith<$Res> {
  _$ProductStatusChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productStatus = null,
  }) {
    return _then(_value.copyWith(
      productStatus: null == productStatus
          ? _value.productStatus
          : productStatus // ignore: cast_nullable_to_non_nullable
              as ProductStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductStatusCopyWith<$Res> get productStatus {
    return $ProductStatusCopyWith<$Res>(_value.productStatus, (value) {
      return _then(_value.copyWith(productStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductStatusChangedImplCopyWith<$Res>
    implements $ProductStatusChangedCopyWith<$Res> {
  factory _$$ProductStatusChangedImplCopyWith(_$ProductStatusChangedImpl value,
          $Res Function(_$ProductStatusChangedImpl) then) =
      __$$ProductStatusChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductStatus productStatus});

  @override
  $ProductStatusCopyWith<$Res> get productStatus;
}

/// @nodoc
class __$$ProductStatusChangedImplCopyWithImpl<$Res>
    extends _$ProductStatusChangedCopyWithImpl<$Res, _$ProductStatusChangedImpl>
    implements _$$ProductStatusChangedImplCopyWith<$Res> {
  __$$ProductStatusChangedImplCopyWithImpl(_$ProductStatusChangedImpl _value,
      $Res Function(_$ProductStatusChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productStatus = null,
  }) {
    return _then(_$ProductStatusChangedImpl(
      null == productStatus
          ? _value.productStatus
          : productStatus // ignore: cast_nullable_to_non_nullable
              as ProductStatus,
    ));
  }
}

/// @nodoc

class _$ProductStatusChangedImpl implements _ProductStatusChanged {
  const _$ProductStatusChangedImpl(this.productStatus);

  @override
  final ProductStatus productStatus;

  @override
  String toString() {
    return 'ProductStatusChanged(productStatus: $productStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductStatusChangedImpl &&
            (identical(other.productStatus, productStatus) ||
                other.productStatus == productStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductStatusChangedImplCopyWith<_$ProductStatusChangedImpl>
      get copyWith =>
          __$$ProductStatusChangedImplCopyWithImpl<_$ProductStatusChangedImpl>(
              this, _$identity);
}

abstract class _ProductStatusChanged implements ProductStatusChanged {
  const factory _ProductStatusChanged(final ProductStatus productStatus) =
      _$ProductStatusChangedImpl;

  @override
  ProductStatus get productStatus;
  @override
  @JsonKey(ignore: true)
  _$$ProductStatusChangedImplCopyWith<_$ProductStatusChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddProductState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  int get submitCount => throw _privateConstructorUsedError;
  List<ProductStatus> get productStatusList =>
      throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  String get productDescription => throw _privateConstructorUsedError;
  ProductType? get productCategory => throw _privateConstructorUsedError;
  ProductStatus? get selectedProductStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddProductStateCopyWith<AddProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddProductStateCopyWith<$Res> {
  factory $AddProductStateCopyWith(
          AddProductState value, $Res Function(AddProductState) then) =
      _$AddProductStateCopyWithImpl<$Res, AddProductState>;
  @useResult
  $Res call(
      {bool isSubmitting,
      int submitCount,
      List<ProductStatus> productStatusList,
      String productName,
      String productDescription,
      ProductType? productCategory,
      ProductStatus? selectedProductStatus});

  $ProductStatusCopyWith<$Res>? get selectedProductStatus;
}

/// @nodoc
class _$AddProductStateCopyWithImpl<$Res, $Val extends AddProductState>
    implements $AddProductStateCopyWith<$Res> {
  _$AddProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? submitCount = null,
    Object? productStatusList = null,
    Object? productName = null,
    Object? productDescription = null,
    Object? productCategory = freezed,
    Object? selectedProductStatus = freezed,
  }) {
    return _then(_value.copyWith(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      submitCount: null == submitCount
          ? _value.submitCount
          : submitCount // ignore: cast_nullable_to_non_nullable
              as int,
      productStatusList: null == productStatusList
          ? _value.productStatusList
          : productStatusList // ignore: cast_nullable_to_non_nullable
              as List<ProductStatus>,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
      productCategory: freezed == productCategory
          ? _value.productCategory
          : productCategory // ignore: cast_nullable_to_non_nullable
              as ProductType?,
      selectedProductStatus: freezed == selectedProductStatus
          ? _value.selectedProductStatus
          : selectedProductStatus // ignore: cast_nullable_to_non_nullable
              as ProductStatus?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductStatusCopyWith<$Res>? get selectedProductStatus {
    if (_value.selectedProductStatus == null) {
      return null;
    }

    return $ProductStatusCopyWith<$Res>(_value.selectedProductStatus!, (value) {
      return _then(_value.copyWith(selectedProductStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddProductStateImplCopyWith<$Res>
    implements $AddProductStateCopyWith<$Res> {
  factory _$$AddProductStateImplCopyWith(_$AddProductStateImpl value,
          $Res Function(_$AddProductStateImpl) then) =
      __$$AddProductStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSubmitting,
      int submitCount,
      List<ProductStatus> productStatusList,
      String productName,
      String productDescription,
      ProductType? productCategory,
      ProductStatus? selectedProductStatus});

  @override
  $ProductStatusCopyWith<$Res>? get selectedProductStatus;
}

/// @nodoc
class __$$AddProductStateImplCopyWithImpl<$Res>
    extends _$AddProductStateCopyWithImpl<$Res, _$AddProductStateImpl>
    implements _$$AddProductStateImplCopyWith<$Res> {
  __$$AddProductStateImplCopyWithImpl(
      _$AddProductStateImpl _value, $Res Function(_$AddProductStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? submitCount = null,
    Object? productStatusList = null,
    Object? productName = null,
    Object? productDescription = null,
    Object? productCategory = freezed,
    Object? selectedProductStatus = freezed,
  }) {
    return _then(_$AddProductStateImpl(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      submitCount: null == submitCount
          ? _value.submitCount
          : submitCount // ignore: cast_nullable_to_non_nullable
              as int,
      productStatusList: null == productStatusList
          ? _value._productStatusList
          : productStatusList // ignore: cast_nullable_to_non_nullable
              as List<ProductStatus>,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
      productCategory: freezed == productCategory
          ? _value.productCategory
          : productCategory // ignore: cast_nullable_to_non_nullable
              as ProductType?,
      selectedProductStatus: freezed == selectedProductStatus
          ? _value.selectedProductStatus
          : selectedProductStatus // ignore: cast_nullable_to_non_nullable
              as ProductStatus?,
    ));
  }
}

/// @nodoc

class _$AddProductStateImpl extends _AddProductState {
  const _$AddProductStateImpl(
      {this.isSubmitting = false,
      this.submitCount = 0,
      final List<ProductStatus> productStatusList = const [],
      this.productName = '',
      this.productDescription = '',
      this.productCategory = null,
      this.selectedProductStatus = null})
      : _productStatusList = productStatusList,
        super._();

  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  @JsonKey()
  final int submitCount;
  final List<ProductStatus> _productStatusList;
  @override
  @JsonKey()
  List<ProductStatus> get productStatusList {
    if (_productStatusList is EqualUnmodifiableListView)
      return _productStatusList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productStatusList);
  }

  @override
  @JsonKey()
  final String productName;
  @override
  @JsonKey()
  final String productDescription;
  @override
  @JsonKey()
  final ProductType? productCategory;
  @override
  @JsonKey()
  final ProductStatus? selectedProductStatus;

  @override
  String toString() {
    return 'AddProductState(isSubmitting: $isSubmitting, submitCount: $submitCount, productStatusList: $productStatusList, productName: $productName, productDescription: $productDescription, productCategory: $productCategory, selectedProductStatus: $selectedProductStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductStateImpl &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.submitCount, submitCount) ||
                other.submitCount == submitCount) &&
            const DeepCollectionEquality()
                .equals(other._productStatusList, _productStatusList) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productDescription, productDescription) ||
                other.productDescription == productDescription) &&
            (identical(other.productCategory, productCategory) ||
                other.productCategory == productCategory) &&
            (identical(other.selectedProductStatus, selectedProductStatus) ||
                other.selectedProductStatus == selectedProductStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isSubmitting,
      submitCount,
      const DeepCollectionEquality().hash(_productStatusList),
      productName,
      productDescription,
      productCategory,
      selectedProductStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductStateImplCopyWith<_$AddProductStateImpl> get copyWith =>
      __$$AddProductStateImplCopyWithImpl<_$AddProductStateImpl>(
          this, _$identity);
}

abstract class _AddProductState extends AddProductState {
  const factory _AddProductState(
      {final bool isSubmitting,
      final int submitCount,
      final List<ProductStatus> productStatusList,
      final String productName,
      final String productDescription,
      final ProductType? productCategory,
      final ProductStatus? selectedProductStatus}) = _$AddProductStateImpl;
  const _AddProductState._() : super._();

  @override
  bool get isSubmitting;
  @override
  int get submitCount;
  @override
  List<ProductStatus> get productStatusList;
  @override
  String get productName;
  @override
  String get productDescription;
  @override
  ProductType? get productCategory;
  @override
  ProductStatus? get selectedProductStatus;
  @override
  @JsonKey(ignore: true)
  _$$AddProductStateImplCopyWith<_$AddProductStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
