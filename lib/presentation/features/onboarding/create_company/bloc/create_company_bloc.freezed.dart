// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_company_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InitScreen {}

/// @nodoc
abstract class $InitScreenCopyWith<$Res> {
  factory $InitScreenCopyWith(
          InitScreen value, $Res Function(InitScreen) then) =
      _$InitScreenCopyWithImpl<$Res, InitScreen>;
}

/// @nodoc
class _$InitScreenCopyWithImpl<$Res, $Val extends InitScreen>
    implements $InitScreenCopyWith<$Res> {
  _$InitScreenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitScreenImplCopyWith<$Res> {
  factory _$$InitScreenImplCopyWith(
          _$InitScreenImpl value, $Res Function(_$InitScreenImpl) then) =
      __$$InitScreenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitScreenImplCopyWithImpl<$Res>
    extends _$InitScreenCopyWithImpl<$Res, _$InitScreenImpl>
    implements _$$InitScreenImplCopyWith<$Res> {
  __$$InitScreenImplCopyWithImpl(
      _$InitScreenImpl _value, $Res Function(_$InitScreenImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitScreenImpl implements _InitScreen {
  const _$InitScreenImpl();

  @override
  String toString() {
    return 'InitScreen()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitScreenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _InitScreen implements InitScreen {
  const factory _InitScreen() = _$InitScreenImpl;
}

/// @nodoc
mixin _$CompanyNameChanged {
  String get companyName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompanyNameChangedCopyWith<CompanyNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyNameChangedCopyWith<$Res> {
  factory $CompanyNameChangedCopyWith(
          CompanyNameChanged value, $Res Function(CompanyNameChanged) then) =
      _$CompanyNameChangedCopyWithImpl<$Res, CompanyNameChanged>;
  @useResult
  $Res call({String companyName});
}

/// @nodoc
class _$CompanyNameChangedCopyWithImpl<$Res, $Val extends CompanyNameChanged>
    implements $CompanyNameChangedCopyWith<$Res> {
  _$CompanyNameChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = null,
  }) {
    return _then(_value.copyWith(
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyNameChangedImplCopyWith<$Res>
    implements $CompanyNameChangedCopyWith<$Res> {
  factory _$$CompanyNameChangedImplCopyWith(_$CompanyNameChangedImpl value,
          $Res Function(_$CompanyNameChangedImpl) then) =
      __$$CompanyNameChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String companyName});
}

/// @nodoc
class __$$CompanyNameChangedImplCopyWithImpl<$Res>
    extends _$CompanyNameChangedCopyWithImpl<$Res, _$CompanyNameChangedImpl>
    implements _$$CompanyNameChangedImplCopyWith<$Res> {
  __$$CompanyNameChangedImplCopyWithImpl(_$CompanyNameChangedImpl _value,
      $Res Function(_$CompanyNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = null,
  }) {
    return _then(_$CompanyNameChangedImpl(
      null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CompanyNameChangedImpl implements _CompanyNameChanged {
  const _$CompanyNameChangedImpl(this.companyName);

  @override
  final String companyName;

  @override
  String toString() {
    return 'CompanyNameChanged(companyName: $companyName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyNameChangedImpl &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, companyName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyNameChangedImplCopyWith<_$CompanyNameChangedImpl> get copyWith =>
      __$$CompanyNameChangedImplCopyWithImpl<_$CompanyNameChangedImpl>(
          this, _$identity);
}

abstract class _CompanyNameChanged implements CompanyNameChanged {
  const factory _CompanyNameChanged(final String companyName) =
      _$CompanyNameChangedImpl;

  @override
  String get companyName;
  @override
  @JsonKey(ignore: true)
  _$$CompanyNameChangedImplCopyWith<_$CompanyNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CompanyLogoChange {
  String get filePath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompanyLogoChangeCopyWith<CompanyLogoChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyLogoChangeCopyWith<$Res> {
  factory $CompanyLogoChangeCopyWith(
          CompanyLogoChange value, $Res Function(CompanyLogoChange) then) =
      _$CompanyLogoChangeCopyWithImpl<$Res, CompanyLogoChange>;
  @useResult
  $Res call({String filePath});
}

/// @nodoc
class _$CompanyLogoChangeCopyWithImpl<$Res, $Val extends CompanyLogoChange>
    implements $CompanyLogoChangeCopyWith<$Res> {
  _$CompanyLogoChangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
  }) {
    return _then(_value.copyWith(
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyLogoChangeImplCopyWith<$Res>
    implements $CompanyLogoChangeCopyWith<$Res> {
  factory _$$CompanyLogoChangeImplCopyWith(_$CompanyLogoChangeImpl value,
          $Res Function(_$CompanyLogoChangeImpl) then) =
      __$$CompanyLogoChangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String filePath});
}

/// @nodoc
class __$$CompanyLogoChangeImplCopyWithImpl<$Res>
    extends _$CompanyLogoChangeCopyWithImpl<$Res, _$CompanyLogoChangeImpl>
    implements _$$CompanyLogoChangeImplCopyWith<$Res> {
  __$$CompanyLogoChangeImplCopyWithImpl(_$CompanyLogoChangeImpl _value,
      $Res Function(_$CompanyLogoChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
  }) {
    return _then(_$CompanyLogoChangeImpl(
      null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CompanyLogoChangeImpl implements _CompanyLogoChange {
  const _$CompanyLogoChangeImpl(this.filePath);

  @override
  final String filePath;

  @override
  String toString() {
    return 'CompanyLogoChange(filePath: $filePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyLogoChangeImpl &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyLogoChangeImplCopyWith<_$CompanyLogoChangeImpl> get copyWith =>
      __$$CompanyLogoChangeImplCopyWithImpl<_$CompanyLogoChangeImpl>(
          this, _$identity);
}

abstract class _CompanyLogoChange implements CompanyLogoChange {
  const factory _CompanyLogoChange(final String filePath) =
      _$CompanyLogoChangeImpl;

  @override
  String get filePath;
  @override
  @JsonKey(ignore: true)
  _$$CompanyLogoChangeImplCopyWith<_$CompanyLogoChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IndustryChanged {
  Industry get industry => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IndustryChangedCopyWith<IndustryChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndustryChangedCopyWith<$Res> {
  factory $IndustryChangedCopyWith(
          IndustryChanged value, $Res Function(IndustryChanged) then) =
      _$IndustryChangedCopyWithImpl<$Res, IndustryChanged>;
  @useResult
  $Res call({Industry industry});

  $IndustryCopyWith<$Res> get industry;
}

/// @nodoc
class _$IndustryChangedCopyWithImpl<$Res, $Val extends IndustryChanged>
    implements $IndustryChangedCopyWith<$Res> {
  _$IndustryChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? industry = null,
  }) {
    return _then(_value.copyWith(
      industry: null == industry
          ? _value.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as Industry,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IndustryCopyWith<$Res> get industry {
    return $IndustryCopyWith<$Res>(_value.industry, (value) {
      return _then(_value.copyWith(industry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IndustryChangedImplCopyWith<$Res>
    implements $IndustryChangedCopyWith<$Res> {
  factory _$$IndustryChangedImplCopyWith(_$IndustryChangedImpl value,
          $Res Function(_$IndustryChangedImpl) then) =
      __$$IndustryChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Industry industry});

  @override
  $IndustryCopyWith<$Res> get industry;
}

/// @nodoc
class __$$IndustryChangedImplCopyWithImpl<$Res>
    extends _$IndustryChangedCopyWithImpl<$Res, _$IndustryChangedImpl>
    implements _$$IndustryChangedImplCopyWith<$Res> {
  __$$IndustryChangedImplCopyWithImpl(
      _$IndustryChangedImpl _value, $Res Function(_$IndustryChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? industry = null,
  }) {
    return _then(_$IndustryChangedImpl(
      null == industry
          ? _value.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as Industry,
    ));
  }
}

/// @nodoc

class _$IndustryChangedImpl implements _IndustryChanged {
  const _$IndustryChangedImpl(this.industry);

  @override
  final Industry industry;

  @override
  String toString() {
    return 'IndustryChanged(industry: $industry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndustryChangedImpl &&
            (identical(other.industry, industry) ||
                other.industry == industry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, industry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IndustryChangedImplCopyWith<_$IndustryChangedImpl> get copyWith =>
      __$$IndustryChangedImplCopyWithImpl<_$IndustryChangedImpl>(
          this, _$identity);
}

abstract class _IndustryChanged implements IndustryChanged {
  const factory _IndustryChanged(final Industry industry) =
      _$IndustryChangedImpl;

  @override
  Industry get industry;
  @override
  @JsonKey(ignore: true)
  _$$IndustryChangedImplCopyWith<_$IndustryChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BusinessTypeChanged {
  CompanyType get companyType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BusinessTypeChangedCopyWith<BusinessTypeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessTypeChangedCopyWith<$Res> {
  factory $BusinessTypeChangedCopyWith(
          BusinessTypeChanged value, $Res Function(BusinessTypeChanged) then) =
      _$BusinessTypeChangedCopyWithImpl<$Res, BusinessTypeChanged>;
  @useResult
  $Res call({CompanyType companyType});
}

/// @nodoc
class _$BusinessTypeChangedCopyWithImpl<$Res, $Val extends BusinessTypeChanged>
    implements $BusinessTypeChangedCopyWith<$Res> {
  _$BusinessTypeChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyType = null,
  }) {
    return _then(_value.copyWith(
      companyType: null == companyType
          ? _value.companyType
          : companyType // ignore: cast_nullable_to_non_nullable
              as CompanyType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusinessTypeChangedImplCopyWith<$Res>
    implements $BusinessTypeChangedCopyWith<$Res> {
  factory _$$BusinessTypeChangedImplCopyWith(_$BusinessTypeChangedImpl value,
          $Res Function(_$BusinessTypeChangedImpl) then) =
      __$$BusinessTypeChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CompanyType companyType});
}

/// @nodoc
class __$$BusinessTypeChangedImplCopyWithImpl<$Res>
    extends _$BusinessTypeChangedCopyWithImpl<$Res, _$BusinessTypeChangedImpl>
    implements _$$BusinessTypeChangedImplCopyWith<$Res> {
  __$$BusinessTypeChangedImplCopyWithImpl(_$BusinessTypeChangedImpl _value,
      $Res Function(_$BusinessTypeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyType = null,
  }) {
    return _then(_$BusinessTypeChangedImpl(
      null == companyType
          ? _value.companyType
          : companyType // ignore: cast_nullable_to_non_nullable
              as CompanyType,
    ));
  }
}

/// @nodoc

class _$BusinessTypeChangedImpl implements _BusinessTypeChanged {
  const _$BusinessTypeChangedImpl(this.companyType);

  @override
  final CompanyType companyType;

  @override
  String toString() {
    return 'BusinessTypeChanged(companyType: $companyType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessTypeChangedImpl &&
            (identical(other.companyType, companyType) ||
                other.companyType == companyType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, companyType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessTypeChangedImplCopyWith<_$BusinessTypeChangedImpl> get copyWith =>
      __$$BusinessTypeChangedImplCopyWithImpl<_$BusinessTypeChangedImpl>(
          this, _$identity);
}

abstract class _BusinessTypeChanged implements BusinessTypeChanged {
  const factory _BusinessTypeChanged(final CompanyType companyType) =
      _$BusinessTypeChangedImpl;

  @override
  CompanyType get companyType;
  @override
  @JsonKey(ignore: true)
  _$$BusinessTypeChangedImplCopyWith<_$BusinessTypeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrganisationChanged {
  String get organisation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrganisationChangedCopyWith<OrganisationChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganisationChangedCopyWith<$Res> {
  factory $OrganisationChangedCopyWith(
          OrganisationChanged value, $Res Function(OrganisationChanged) then) =
      _$OrganisationChangedCopyWithImpl<$Res, OrganisationChanged>;
  @useResult
  $Res call({String organisation});
}

/// @nodoc
class _$OrganisationChangedCopyWithImpl<$Res, $Val extends OrganisationChanged>
    implements $OrganisationChangedCopyWith<$Res> {
  _$OrganisationChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organisation = null,
  }) {
    return _then(_value.copyWith(
      organisation: null == organisation
          ? _value.organisation
          : organisation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrganisationChangedImplCopyWith<$Res>
    implements $OrganisationChangedCopyWith<$Res> {
  factory _$$OrganisationChangedImplCopyWith(_$OrganisationChangedImpl value,
          $Res Function(_$OrganisationChangedImpl) then) =
      __$$OrganisationChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String organisation});
}

/// @nodoc
class __$$OrganisationChangedImplCopyWithImpl<$Res>
    extends _$OrganisationChangedCopyWithImpl<$Res, _$OrganisationChangedImpl>
    implements _$$OrganisationChangedImplCopyWith<$Res> {
  __$$OrganisationChangedImplCopyWithImpl(_$OrganisationChangedImpl _value,
      $Res Function(_$OrganisationChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organisation = null,
  }) {
    return _then(_$OrganisationChangedImpl(
      null == organisation
          ? _value.organisation
          : organisation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OrganisationChangedImpl implements _OrganisationChanged {
  const _$OrganisationChangedImpl(this.organisation);

  @override
  final String organisation;

  @override
  String toString() {
    return 'OrganisationChanged(organisation: $organisation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganisationChangedImpl &&
            (identical(other.organisation, organisation) ||
                other.organisation == organisation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, organisation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganisationChangedImplCopyWith<_$OrganisationChangedImpl> get copyWith =>
      __$$OrganisationChangedImplCopyWithImpl<_$OrganisationChangedImpl>(
          this, _$identity);
}

abstract class _OrganisationChanged implements OrganisationChanged {
  const factory _OrganisationChanged(final String organisation) =
      _$OrganisationChangedImpl;

  @override
  String get organisation;
  @override
  @JsonKey(ignore: true)
  _$$OrganisationChangedImplCopyWith<_$OrganisationChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DateRegisterdChanged {
  DateTime get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DateRegisterdChangedCopyWith<DateRegisterdChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateRegisterdChangedCopyWith<$Res> {
  factory $DateRegisterdChangedCopyWith(DateRegisterdChanged value,
          $Res Function(DateRegisterdChanged) then) =
      _$DateRegisterdChangedCopyWithImpl<$Res, DateRegisterdChanged>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class _$DateRegisterdChangedCopyWithImpl<$Res,
        $Val extends DateRegisterdChanged>
    implements $DateRegisterdChangedCopyWith<$Res> {
  _$DateRegisterdChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DateRegisterdChangedImplCopyWith<$Res>
    implements $DateRegisterdChangedCopyWith<$Res> {
  factory _$$DateRegisterdChangedImplCopyWith(_$DateRegisterdChangedImpl value,
          $Res Function(_$DateRegisterdChangedImpl) then) =
      __$$DateRegisterdChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$DateRegisterdChangedImplCopyWithImpl<$Res>
    extends _$DateRegisterdChangedCopyWithImpl<$Res, _$DateRegisterdChangedImpl>
    implements _$$DateRegisterdChangedImplCopyWith<$Res> {
  __$$DateRegisterdChangedImplCopyWithImpl(_$DateRegisterdChangedImpl _value,
      $Res Function(_$DateRegisterdChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$DateRegisterdChangedImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DateRegisterdChangedImpl implements _DateRegisterdChanged {
  const _$DateRegisterdChangedImpl(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'DateRegisterdChanged(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateRegisterdChangedImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateRegisterdChangedImplCopyWith<_$DateRegisterdChangedImpl>
      get copyWith =>
          __$$DateRegisterdChangedImplCopyWithImpl<_$DateRegisterdChangedImpl>(
              this, _$identity);
}

abstract class _DateRegisterdChanged implements DateRegisterdChanged {
  const factory _DateRegisterdChanged(final DateTime date) =
      _$DateRegisterdChangedImpl;

  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$DateRegisterdChangedImplCopyWith<_$DateRegisterdChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WebSiteChanged {
  String get website => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WebSiteChangedCopyWith<WebSiteChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebSiteChangedCopyWith<$Res> {
  factory $WebSiteChangedCopyWith(
          WebSiteChanged value, $Res Function(WebSiteChanged) then) =
      _$WebSiteChangedCopyWithImpl<$Res, WebSiteChanged>;
  @useResult
  $Res call({String website});
}

/// @nodoc
class _$WebSiteChangedCopyWithImpl<$Res, $Val extends WebSiteChanged>
    implements $WebSiteChangedCopyWith<$Res> {
  _$WebSiteChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? website = null,
  }) {
    return _then(_value.copyWith(
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebSiteChangedImplCopyWith<$Res>
    implements $WebSiteChangedCopyWith<$Res> {
  factory _$$WebSiteChangedImplCopyWith(_$WebSiteChangedImpl value,
          $Res Function(_$WebSiteChangedImpl) then) =
      __$$WebSiteChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String website});
}

/// @nodoc
class __$$WebSiteChangedImplCopyWithImpl<$Res>
    extends _$WebSiteChangedCopyWithImpl<$Res, _$WebSiteChangedImpl>
    implements _$$WebSiteChangedImplCopyWith<$Res> {
  __$$WebSiteChangedImplCopyWithImpl(
      _$WebSiteChangedImpl _value, $Res Function(_$WebSiteChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? website = null,
  }) {
    return _then(_$WebSiteChangedImpl(
      null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WebSiteChangedImpl implements _WebSiteChanged {
  const _$WebSiteChangedImpl(this.website);

  @override
  final String website;

  @override
  String toString() {
    return 'WebSiteChanged(website: $website)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebSiteChangedImpl &&
            (identical(other.website, website) || other.website == website));
  }

  @override
  int get hashCode => Object.hash(runtimeType, website);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WebSiteChangedImplCopyWith<_$WebSiteChangedImpl> get copyWith =>
      __$$WebSiteChangedImplCopyWithImpl<_$WebSiteChangedImpl>(
          this, _$identity);
}

abstract class _WebSiteChanged implements WebSiteChanged {
  const factory _WebSiteChanged(final String website) = _$WebSiteChangedImpl;

  @override
  String get website;
  @override
  @JsonKey(ignore: true)
  _$$WebSiteChangedImplCopyWith<_$WebSiteChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContactNumberChanged {
  String get contactNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactNumberChangedCopyWith<ContactNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactNumberChangedCopyWith<$Res> {
  factory $ContactNumberChangedCopyWith(ContactNumberChanged value,
          $Res Function(ContactNumberChanged) then) =
      _$ContactNumberChangedCopyWithImpl<$Res, ContactNumberChanged>;
  @useResult
  $Res call({String contactNumber});
}

/// @nodoc
class _$ContactNumberChangedCopyWithImpl<$Res,
        $Val extends ContactNumberChanged>
    implements $ContactNumberChangedCopyWith<$Res> {
  _$ContactNumberChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactNumber = null,
  }) {
    return _then(_value.copyWith(
      contactNumber: null == contactNumber
          ? _value.contactNumber
          : contactNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactNumberChangedImplCopyWith<$Res>
    implements $ContactNumberChangedCopyWith<$Res> {
  factory _$$ContactNumberChangedImplCopyWith(_$ContactNumberChangedImpl value,
          $Res Function(_$ContactNumberChangedImpl) then) =
      __$$ContactNumberChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String contactNumber});
}

/// @nodoc
class __$$ContactNumberChangedImplCopyWithImpl<$Res>
    extends _$ContactNumberChangedCopyWithImpl<$Res, _$ContactNumberChangedImpl>
    implements _$$ContactNumberChangedImplCopyWith<$Res> {
  __$$ContactNumberChangedImplCopyWithImpl(_$ContactNumberChangedImpl _value,
      $Res Function(_$ContactNumberChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactNumber = null,
  }) {
    return _then(_$ContactNumberChangedImpl(
      null == contactNumber
          ? _value.contactNumber
          : contactNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ContactNumberChangedImpl implements _ContactNumberChanged {
  const _$ContactNumberChangedImpl(this.contactNumber);

  @override
  final String contactNumber;

  @override
  String toString() {
    return 'ContactNumberChanged(contactNumber: $contactNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactNumberChangedImpl &&
            (identical(other.contactNumber, contactNumber) ||
                other.contactNumber == contactNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contactNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactNumberChangedImplCopyWith<_$ContactNumberChangedImpl>
      get copyWith =>
          __$$ContactNumberChangedImplCopyWithImpl<_$ContactNumberChangedImpl>(
              this, _$identity);
}

abstract class _ContactNumberChanged implements ContactNumberChanged {
  const factory _ContactNumberChanged(final String contactNumber) =
      _$ContactNumberChangedImpl;

  @override
  String get contactNumber;
  @override
  @JsonKey(ignore: true)
  _$$ContactNumberChangedImplCopyWith<_$ContactNumberChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OfficeAddressChanged {
  String get address => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OfficeAddressChangedCopyWith<OfficeAddressChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfficeAddressChangedCopyWith<$Res> {
  factory $OfficeAddressChangedCopyWith(OfficeAddressChanged value,
          $Res Function(OfficeAddressChanged) then) =
      _$OfficeAddressChangedCopyWithImpl<$Res, OfficeAddressChanged>;
  @useResult
  $Res call({String address});
}

/// @nodoc
class _$OfficeAddressChangedCopyWithImpl<$Res,
        $Val extends OfficeAddressChanged>
    implements $OfficeAddressChangedCopyWith<$Res> {
  _$OfficeAddressChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfficeAddressChangedImplCopyWith<$Res>
    implements $OfficeAddressChangedCopyWith<$Res> {
  factory _$$OfficeAddressChangedImplCopyWith(_$OfficeAddressChangedImpl value,
          $Res Function(_$OfficeAddressChangedImpl) then) =
      __$$OfficeAddressChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address});
}

/// @nodoc
class __$$OfficeAddressChangedImplCopyWithImpl<$Res>
    extends _$OfficeAddressChangedCopyWithImpl<$Res, _$OfficeAddressChangedImpl>
    implements _$$OfficeAddressChangedImplCopyWith<$Res> {
  __$$OfficeAddressChangedImplCopyWithImpl(_$OfficeAddressChangedImpl _value,
      $Res Function(_$OfficeAddressChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$OfficeAddressChangedImpl(
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OfficeAddressChangedImpl implements _OfficeAddressChanged {
  const _$OfficeAddressChangedImpl(this.address);

  @override
  final String address;

  @override
  String toString() {
    return 'OfficeAddressChanged(address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfficeAddressChangedImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfficeAddressChangedImplCopyWith<_$OfficeAddressChangedImpl>
      get copyWith =>
          __$$OfficeAddressChangedImplCopyWithImpl<_$OfficeAddressChangedImpl>(
              this, _$identity);
}

abstract class _OfficeAddressChanged implements OfficeAddressChanged {
  const factory _OfficeAddressChanged(final String address) =
      _$OfficeAddressChangedImpl;

  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$$OfficeAddressChangedImplCopyWith<_$OfficeAddressChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$JobTitleChanged {
  String get jobTitle => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JobTitleChangedCopyWith<JobTitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobTitleChangedCopyWith<$Res> {
  factory $JobTitleChangedCopyWith(
          JobTitleChanged value, $Res Function(JobTitleChanged) then) =
      _$JobTitleChangedCopyWithImpl<$Res, JobTitleChanged>;
  @useResult
  $Res call({String jobTitle});
}

/// @nodoc
class _$JobTitleChangedCopyWithImpl<$Res, $Val extends JobTitleChanged>
    implements $JobTitleChangedCopyWith<$Res> {
  _$JobTitleChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobTitle = null,
  }) {
    return _then(_value.copyWith(
      jobTitle: null == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobTitleChangedImplCopyWith<$Res>
    implements $JobTitleChangedCopyWith<$Res> {
  factory _$$JobTitleChangedImplCopyWith(_$JobTitleChangedImpl value,
          $Res Function(_$JobTitleChangedImpl) then) =
      __$$JobTitleChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String jobTitle});
}

/// @nodoc
class __$$JobTitleChangedImplCopyWithImpl<$Res>
    extends _$JobTitleChangedCopyWithImpl<$Res, _$JobTitleChangedImpl>
    implements _$$JobTitleChangedImplCopyWith<$Res> {
  __$$JobTitleChangedImplCopyWithImpl(
      _$JobTitleChangedImpl _value, $Res Function(_$JobTitleChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobTitle = null,
  }) {
    return _then(_$JobTitleChangedImpl(
      null == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$JobTitleChangedImpl implements _JobTitleChanged {
  const _$JobTitleChangedImpl(this.jobTitle);

  @override
  final String jobTitle;

  @override
  String toString() {
    return 'JobTitleChanged(jobTitle: $jobTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobTitleChangedImpl &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, jobTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobTitleChangedImplCopyWith<_$JobTitleChangedImpl> get copyWith =>
      __$$JobTitleChangedImplCopyWithImpl<_$JobTitleChangedImpl>(
          this, _$identity);
}

abstract class _JobTitleChanged implements JobTitleChanged {
  const factory _JobTitleChanged(final String jobTitle) = _$JobTitleChangedImpl;

  @override
  String get jobTitle;
  @override
  @JsonKey(ignore: true)
  _$$JobTitleChangedImplCopyWith<_$JobTitleChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LevelOfInvolvementChanged {
  LevelOfInvolvement get levelOfInvolvement =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LevelOfInvolvementChangedCopyWith<LevelOfInvolvementChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelOfInvolvementChangedCopyWith<$Res> {
  factory $LevelOfInvolvementChangedCopyWith(LevelOfInvolvementChanged value,
          $Res Function(LevelOfInvolvementChanged) then) =
      _$LevelOfInvolvementChangedCopyWithImpl<$Res, LevelOfInvolvementChanged>;
  @useResult
  $Res call({LevelOfInvolvement levelOfInvolvement});
}

/// @nodoc
class _$LevelOfInvolvementChangedCopyWithImpl<$Res,
        $Val extends LevelOfInvolvementChanged>
    implements $LevelOfInvolvementChangedCopyWith<$Res> {
  _$LevelOfInvolvementChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelOfInvolvement = null,
  }) {
    return _then(_value.copyWith(
      levelOfInvolvement: null == levelOfInvolvement
          ? _value.levelOfInvolvement
          : levelOfInvolvement // ignore: cast_nullable_to_non_nullable
              as LevelOfInvolvement,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LevelOfInvolvementChangedImplCopyWith<$Res>
    implements $LevelOfInvolvementChangedCopyWith<$Res> {
  factory _$$LevelOfInvolvementChangedImplCopyWith(
          _$LevelOfInvolvementChangedImpl value,
          $Res Function(_$LevelOfInvolvementChangedImpl) then) =
      __$$LevelOfInvolvementChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LevelOfInvolvement levelOfInvolvement});
}

/// @nodoc
class __$$LevelOfInvolvementChangedImplCopyWithImpl<$Res>
    extends _$LevelOfInvolvementChangedCopyWithImpl<$Res,
        _$LevelOfInvolvementChangedImpl>
    implements _$$LevelOfInvolvementChangedImplCopyWith<$Res> {
  __$$LevelOfInvolvementChangedImplCopyWithImpl(
      _$LevelOfInvolvementChangedImpl _value,
      $Res Function(_$LevelOfInvolvementChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelOfInvolvement = null,
  }) {
    return _then(_$LevelOfInvolvementChangedImpl(
      null == levelOfInvolvement
          ? _value.levelOfInvolvement
          : levelOfInvolvement // ignore: cast_nullable_to_non_nullable
              as LevelOfInvolvement,
    ));
  }
}

/// @nodoc

class _$LevelOfInvolvementChangedImpl implements _LevelOfInvolvementChanged {
  const _$LevelOfInvolvementChangedImpl(this.levelOfInvolvement);

  @override
  final LevelOfInvolvement levelOfInvolvement;

  @override
  String toString() {
    return 'LevelOfInvolvementChanged(levelOfInvolvement: $levelOfInvolvement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelOfInvolvementChangedImpl &&
            (identical(other.levelOfInvolvement, levelOfInvolvement) ||
                other.levelOfInvolvement == levelOfInvolvement));
  }

  @override
  int get hashCode => Object.hash(runtimeType, levelOfInvolvement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LevelOfInvolvementChangedImplCopyWith<_$LevelOfInvolvementChangedImpl>
      get copyWith => __$$LevelOfInvolvementChangedImplCopyWithImpl<
          _$LevelOfInvolvementChangedImpl>(this, _$identity);
}

abstract class _LevelOfInvolvementChanged implements LevelOfInvolvementChanged {
  const factory _LevelOfInvolvementChanged(
          final LevelOfInvolvement levelOfInvolvement) =
      _$LevelOfInvolvementChangedImpl;

  @override
  LevelOfInvolvement get levelOfInvolvement;
  @override
  @JsonKey(ignore: true)
  _$$LevelOfInvolvementChangedImplCopyWith<_$LevelOfInvolvementChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StartWorkingDateChange {
  DateTime get startWorkingDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StartWorkingDateChangeCopyWith<StartWorkingDateChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartWorkingDateChangeCopyWith<$Res> {
  factory $StartWorkingDateChangeCopyWith(StartWorkingDateChange value,
          $Res Function(StartWorkingDateChange) then) =
      _$StartWorkingDateChangeCopyWithImpl<$Res, StartWorkingDateChange>;
  @useResult
  $Res call({DateTime startWorkingDate});
}

/// @nodoc
class _$StartWorkingDateChangeCopyWithImpl<$Res,
        $Val extends StartWorkingDateChange>
    implements $StartWorkingDateChangeCopyWith<$Res> {
  _$StartWorkingDateChangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startWorkingDate = null,
  }) {
    return _then(_value.copyWith(
      startWorkingDate: null == startWorkingDate
          ? _value.startWorkingDate
          : startWorkingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartWorkingDateChangeImplCopyWith<$Res>
    implements $StartWorkingDateChangeCopyWith<$Res> {
  factory _$$StartWorkingDateChangeImplCopyWith(
          _$StartWorkingDateChangeImpl value,
          $Res Function(_$StartWorkingDateChangeImpl) then) =
      __$$StartWorkingDateChangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime startWorkingDate});
}

/// @nodoc
class __$$StartWorkingDateChangeImplCopyWithImpl<$Res>
    extends _$StartWorkingDateChangeCopyWithImpl<$Res,
        _$StartWorkingDateChangeImpl>
    implements _$$StartWorkingDateChangeImplCopyWith<$Res> {
  __$$StartWorkingDateChangeImplCopyWithImpl(
      _$StartWorkingDateChangeImpl _value,
      $Res Function(_$StartWorkingDateChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startWorkingDate = null,
  }) {
    return _then(_$StartWorkingDateChangeImpl(
      null == startWorkingDate
          ? _value.startWorkingDate
          : startWorkingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$StartWorkingDateChangeImpl implements _StartWorkingDateChange {
  const _$StartWorkingDateChangeImpl(this.startWorkingDate);

  @override
  final DateTime startWorkingDate;

  @override
  String toString() {
    return 'StartWorkingDateChange(startWorkingDate: $startWorkingDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartWorkingDateChangeImpl &&
            (identical(other.startWorkingDate, startWorkingDate) ||
                other.startWorkingDate == startWorkingDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startWorkingDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartWorkingDateChangeImplCopyWith<_$StartWorkingDateChangeImpl>
      get copyWith => __$$StartWorkingDateChangeImplCopyWithImpl<
          _$StartWorkingDateChangeImpl>(this, _$identity);
}

abstract class _StartWorkingDateChange implements StartWorkingDateChange {
  const factory _StartWorkingDateChange(final DateTime startWorkingDate) =
      _$StartWorkingDateChangeImpl;

  @override
  DateTime get startWorkingDate;
  @override
  @JsonKey(ignore: true)
  _$$StartWorkingDateChangeImplCopyWith<_$StartWorkingDateChangeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotRegisteredYetChanged {
  bool get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotRegisteredYetChangedCopyWith<NotRegisteredYetChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotRegisteredYetChangedCopyWith<$Res> {
  factory $NotRegisteredYetChangedCopyWith(NotRegisteredYetChanged value,
          $Res Function(NotRegisteredYetChanged) then) =
      _$NotRegisteredYetChangedCopyWithImpl<$Res, NotRegisteredYetChanged>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class _$NotRegisteredYetChangedCopyWithImpl<$Res,
        $Val extends NotRegisteredYetChanged>
    implements $NotRegisteredYetChangedCopyWith<$Res> {
  _$NotRegisteredYetChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotRegisteredYetChangedImplCopyWith<$Res>
    implements $NotRegisteredYetChangedCopyWith<$Res> {
  factory _$$NotRegisteredYetChangedImplCopyWith(
          _$NotRegisteredYetChangedImpl value,
          $Res Function(_$NotRegisteredYetChangedImpl) then) =
      __$$NotRegisteredYetChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$NotRegisteredYetChangedImplCopyWithImpl<$Res>
    extends _$NotRegisteredYetChangedCopyWithImpl<$Res,
        _$NotRegisteredYetChangedImpl>
    implements _$$NotRegisteredYetChangedImplCopyWith<$Res> {
  __$$NotRegisteredYetChangedImplCopyWithImpl(
      _$NotRegisteredYetChangedImpl _value,
      $Res Function(_$NotRegisteredYetChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$NotRegisteredYetChangedImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NotRegisteredYetChangedImpl implements _NotRegisteredYetChanged {
  const _$NotRegisteredYetChangedImpl(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'NotRegisteredYetChanged(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotRegisteredYetChangedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotRegisteredYetChangedImplCopyWith<_$NotRegisteredYetChangedImpl>
      get copyWith => __$$NotRegisteredYetChangedImplCopyWithImpl<
          _$NotRegisteredYetChangedImpl>(this, _$identity);
}

abstract class _NotRegisteredYetChanged implements NotRegisteredYetChanged {
  const factory _NotRegisteredYetChanged(final bool value) =
      _$NotRegisteredYetChangedImpl;

  @override
  bool get value;
  @override
  @JsonKey(ignore: true)
  _$$NotRegisteredYetChangedImplCopyWith<_$NotRegisteredYetChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContinueButtonPressed {}

/// @nodoc
abstract class $ContinueButtonPressedCopyWith<$Res> {
  factory $ContinueButtonPressedCopyWith(ContinueButtonPressed value,
          $Res Function(ContinueButtonPressed) then) =
      _$ContinueButtonPressedCopyWithImpl<$Res, ContinueButtonPressed>;
}

/// @nodoc
class _$ContinueButtonPressedCopyWithImpl<$Res,
        $Val extends ContinueButtonPressed>
    implements $ContinueButtonPressedCopyWith<$Res> {
  _$ContinueButtonPressedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ContinueButtonPressedImplCopyWith<$Res> {
  factory _$$ContinueButtonPressedImplCopyWith(
          _$ContinueButtonPressedImpl value,
          $Res Function(_$ContinueButtonPressedImpl) then) =
      __$$ContinueButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContinueButtonPressedImplCopyWithImpl<$Res>
    extends _$ContinueButtonPressedCopyWithImpl<$Res,
        _$ContinueButtonPressedImpl>
    implements _$$ContinueButtonPressedImplCopyWith<$Res> {
  __$$ContinueButtonPressedImplCopyWithImpl(_$ContinueButtonPressedImpl _value,
      $Res Function(_$ContinueButtonPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ContinueButtonPressedImpl implements _ContinueButtonPressed {
  const _$ContinueButtonPressedImpl();

  @override
  String toString() {
    return 'ContinueButtonPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContinueButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _ContinueButtonPressed implements ContinueButtonPressed {
  const factory _ContinueButtonPressed() = _$ContinueButtonPressedImpl;
}

/// @nodoc
mixin _$SelectedPhotoPressed {}

/// @nodoc
abstract class $SelectedPhotoPressedCopyWith<$Res> {
  factory $SelectedPhotoPressedCopyWith(SelectedPhotoPressed value,
          $Res Function(SelectedPhotoPressed) then) =
      _$SelectedPhotoPressedCopyWithImpl<$Res, SelectedPhotoPressed>;
}

/// @nodoc
class _$SelectedPhotoPressedCopyWithImpl<$Res,
        $Val extends SelectedPhotoPressed>
    implements $SelectedPhotoPressedCopyWith<$Res> {
  _$SelectedPhotoPressedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SelectedPhotoPressedImplCopyWith<$Res> {
  factory _$$SelectedPhotoPressedImplCopyWith(_$SelectedPhotoPressedImpl value,
          $Res Function(_$SelectedPhotoPressedImpl) then) =
      __$$SelectedPhotoPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectedPhotoPressedImplCopyWithImpl<$Res>
    extends _$SelectedPhotoPressedCopyWithImpl<$Res, _$SelectedPhotoPressedImpl>
    implements _$$SelectedPhotoPressedImplCopyWith<$Res> {
  __$$SelectedPhotoPressedImplCopyWithImpl(_$SelectedPhotoPressedImpl _value,
      $Res Function(_$SelectedPhotoPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SelectedPhotoPressedImpl implements _SelectedPhotoPressed {
  const _$SelectedPhotoPressedImpl();

  @override
  String toString() {
    return 'SelectedPhotoPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedPhotoPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _SelectedPhotoPressed implements SelectedPhotoPressed {
  const factory _SelectedPhotoPressed() = _$SelectedPhotoPressedImpl;
}

/// @nodoc
mixin _$CreateCompanyState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  int get submitCount => throw _privateConstructorUsedError;
  String get companyName => throw _privateConstructorUsedError;
  String get companyLogo => throw _privateConstructorUsedError;
  Industry? get selectedIndustry => throw _privateConstructorUsedError;
  CompanyType? get companyType => throw _privateConstructorUsedError;
  String get organisation => throw _privateConstructorUsedError;
  DateTime? get dateRegistered => throw _privateConstructorUsedError;
  bool get notRegistered => throw _privateConstructorUsedError;
  String get website => throw _privateConstructorUsedError;
  String get contactNumber => throw _privateConstructorUsedError;
  String get officeAddress => throw _privateConstructorUsedError;
  String get jobTitle => throw _privateConstructorUsedError;
  LevelOfInvolvement? get levelOfInvolvement =>
      throw _privateConstructorUsedError;
  DateTime? get startWorkingDate => throw _privateConstructorUsedError;
  List<Industry> get industryList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateCompanyStateCopyWith<CreateCompanyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCompanyStateCopyWith<$Res> {
  factory $CreateCompanyStateCopyWith(
          CreateCompanyState value, $Res Function(CreateCompanyState) then) =
      _$CreateCompanyStateCopyWithImpl<$Res, CreateCompanyState>;
  @useResult
  $Res call(
      {bool isSubmitting,
      int submitCount,
      String companyName,
      String companyLogo,
      Industry? selectedIndustry,
      CompanyType? companyType,
      String organisation,
      DateTime? dateRegistered,
      bool notRegistered,
      String website,
      String contactNumber,
      String officeAddress,
      String jobTitle,
      LevelOfInvolvement? levelOfInvolvement,
      DateTime? startWorkingDate,
      List<Industry> industryList});

  $IndustryCopyWith<$Res>? get selectedIndustry;
}

/// @nodoc
class _$CreateCompanyStateCopyWithImpl<$Res, $Val extends CreateCompanyState>
    implements $CreateCompanyStateCopyWith<$Res> {
  _$CreateCompanyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? submitCount = null,
    Object? companyName = null,
    Object? companyLogo = null,
    Object? selectedIndustry = freezed,
    Object? companyType = freezed,
    Object? organisation = null,
    Object? dateRegistered = freezed,
    Object? notRegistered = null,
    Object? website = null,
    Object? contactNumber = null,
    Object? officeAddress = null,
    Object? jobTitle = null,
    Object? levelOfInvolvement = freezed,
    Object? startWorkingDate = freezed,
    Object? industryList = null,
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
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      companyLogo: null == companyLogo
          ? _value.companyLogo
          : companyLogo // ignore: cast_nullable_to_non_nullable
              as String,
      selectedIndustry: freezed == selectedIndustry
          ? _value.selectedIndustry
          : selectedIndustry // ignore: cast_nullable_to_non_nullable
              as Industry?,
      companyType: freezed == companyType
          ? _value.companyType
          : companyType // ignore: cast_nullable_to_non_nullable
              as CompanyType?,
      organisation: null == organisation
          ? _value.organisation
          : organisation // ignore: cast_nullable_to_non_nullable
              as String,
      dateRegistered: freezed == dateRegistered
          ? _value.dateRegistered
          : dateRegistered // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notRegistered: null == notRegistered
          ? _value.notRegistered
          : notRegistered // ignore: cast_nullable_to_non_nullable
              as bool,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      contactNumber: null == contactNumber
          ? _value.contactNumber
          : contactNumber // ignore: cast_nullable_to_non_nullable
              as String,
      officeAddress: null == officeAddress
          ? _value.officeAddress
          : officeAddress // ignore: cast_nullable_to_non_nullable
              as String,
      jobTitle: null == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String,
      levelOfInvolvement: freezed == levelOfInvolvement
          ? _value.levelOfInvolvement
          : levelOfInvolvement // ignore: cast_nullable_to_non_nullable
              as LevelOfInvolvement?,
      startWorkingDate: freezed == startWorkingDate
          ? _value.startWorkingDate
          : startWorkingDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      industryList: null == industryList
          ? _value.industryList
          : industryList // ignore: cast_nullable_to_non_nullable
              as List<Industry>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IndustryCopyWith<$Res>? get selectedIndustry {
    if (_value.selectedIndustry == null) {
      return null;
    }

    return $IndustryCopyWith<$Res>(_value.selectedIndustry!, (value) {
      return _then(_value.copyWith(selectedIndustry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateCompanyStateImplCopyWith<$Res>
    implements $CreateCompanyStateCopyWith<$Res> {
  factory _$$CreateCompanyStateImplCopyWith(_$CreateCompanyStateImpl value,
          $Res Function(_$CreateCompanyStateImpl) then) =
      __$$CreateCompanyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSubmitting,
      int submitCount,
      String companyName,
      String companyLogo,
      Industry? selectedIndustry,
      CompanyType? companyType,
      String organisation,
      DateTime? dateRegistered,
      bool notRegistered,
      String website,
      String contactNumber,
      String officeAddress,
      String jobTitle,
      LevelOfInvolvement? levelOfInvolvement,
      DateTime? startWorkingDate,
      List<Industry> industryList});

  @override
  $IndustryCopyWith<$Res>? get selectedIndustry;
}

/// @nodoc
class __$$CreateCompanyStateImplCopyWithImpl<$Res>
    extends _$CreateCompanyStateCopyWithImpl<$Res, _$CreateCompanyStateImpl>
    implements _$$CreateCompanyStateImplCopyWith<$Res> {
  __$$CreateCompanyStateImplCopyWithImpl(_$CreateCompanyStateImpl _value,
      $Res Function(_$CreateCompanyStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? submitCount = null,
    Object? companyName = null,
    Object? companyLogo = null,
    Object? selectedIndustry = freezed,
    Object? companyType = freezed,
    Object? organisation = null,
    Object? dateRegistered = freezed,
    Object? notRegistered = null,
    Object? website = null,
    Object? contactNumber = null,
    Object? officeAddress = null,
    Object? jobTitle = null,
    Object? levelOfInvolvement = freezed,
    Object? startWorkingDate = freezed,
    Object? industryList = null,
  }) {
    return _then(_$CreateCompanyStateImpl(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      submitCount: null == submitCount
          ? _value.submitCount
          : submitCount // ignore: cast_nullable_to_non_nullable
              as int,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      companyLogo: null == companyLogo
          ? _value.companyLogo
          : companyLogo // ignore: cast_nullable_to_non_nullable
              as String,
      selectedIndustry: freezed == selectedIndustry
          ? _value.selectedIndustry
          : selectedIndustry // ignore: cast_nullable_to_non_nullable
              as Industry?,
      companyType: freezed == companyType
          ? _value.companyType
          : companyType // ignore: cast_nullable_to_non_nullable
              as CompanyType?,
      organisation: null == organisation
          ? _value.organisation
          : organisation // ignore: cast_nullable_to_non_nullable
              as String,
      dateRegistered: freezed == dateRegistered
          ? _value.dateRegistered
          : dateRegistered // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notRegistered: null == notRegistered
          ? _value.notRegistered
          : notRegistered // ignore: cast_nullable_to_non_nullable
              as bool,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      contactNumber: null == contactNumber
          ? _value.contactNumber
          : contactNumber // ignore: cast_nullable_to_non_nullable
              as String,
      officeAddress: null == officeAddress
          ? _value.officeAddress
          : officeAddress // ignore: cast_nullable_to_non_nullable
              as String,
      jobTitle: null == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String,
      levelOfInvolvement: freezed == levelOfInvolvement
          ? _value.levelOfInvolvement
          : levelOfInvolvement // ignore: cast_nullable_to_non_nullable
              as LevelOfInvolvement?,
      startWorkingDate: freezed == startWorkingDate
          ? _value.startWorkingDate
          : startWorkingDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      industryList: null == industryList
          ? _value._industryList
          : industryList // ignore: cast_nullable_to_non_nullable
              as List<Industry>,
    ));
  }
}

/// @nodoc

class _$CreateCompanyStateImpl extends _CreateCompanyState {
  const _$CreateCompanyStateImpl(
      {this.isSubmitting = false,
      this.submitCount = 0,
      this.companyName = '',
      this.companyLogo = '',
      this.selectedIndustry = null,
      this.companyType = null,
      this.organisation = '',
      this.dateRegistered = null,
      this.notRegistered = false,
      this.website = '',
      this.contactNumber = '',
      this.officeAddress = '',
      this.jobTitle = '',
      this.levelOfInvolvement = null,
      this.startWorkingDate = null,
      final List<Industry> industryList = const []})
      : _industryList = industryList,
        super._();

  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  @JsonKey()
  final int submitCount;
  @override
  @JsonKey()
  final String companyName;
  @override
  @JsonKey()
  final String companyLogo;
  @override
  @JsonKey()
  final Industry? selectedIndustry;
  @override
  @JsonKey()
  final CompanyType? companyType;
  @override
  @JsonKey()
  final String organisation;
  @override
  @JsonKey()
  final DateTime? dateRegistered;
  @override
  @JsonKey()
  final bool notRegistered;
  @override
  @JsonKey()
  final String website;
  @override
  @JsonKey()
  final String contactNumber;
  @override
  @JsonKey()
  final String officeAddress;
  @override
  @JsonKey()
  final String jobTitle;
  @override
  @JsonKey()
  final LevelOfInvolvement? levelOfInvolvement;
  @override
  @JsonKey()
  final DateTime? startWorkingDate;
  final List<Industry> _industryList;
  @override
  @JsonKey()
  List<Industry> get industryList {
    if (_industryList is EqualUnmodifiableListView) return _industryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_industryList);
  }

  @override
  String toString() {
    return 'CreateCompanyState(isSubmitting: $isSubmitting, submitCount: $submitCount, companyName: $companyName, companyLogo: $companyLogo, selectedIndustry: $selectedIndustry, companyType: $companyType, organisation: $organisation, dateRegistered: $dateRegistered, notRegistered: $notRegistered, website: $website, contactNumber: $contactNumber, officeAddress: $officeAddress, jobTitle: $jobTitle, levelOfInvolvement: $levelOfInvolvement, startWorkingDate: $startWorkingDate, industryList: $industryList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCompanyStateImpl &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.submitCount, submitCount) ||
                other.submitCount == submitCount) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.companyLogo, companyLogo) ||
                other.companyLogo == companyLogo) &&
            (identical(other.selectedIndustry, selectedIndustry) ||
                other.selectedIndustry == selectedIndustry) &&
            (identical(other.companyType, companyType) ||
                other.companyType == companyType) &&
            (identical(other.organisation, organisation) ||
                other.organisation == organisation) &&
            (identical(other.dateRegistered, dateRegistered) ||
                other.dateRegistered == dateRegistered) &&
            (identical(other.notRegistered, notRegistered) ||
                other.notRegistered == notRegistered) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.contactNumber, contactNumber) ||
                other.contactNumber == contactNumber) &&
            (identical(other.officeAddress, officeAddress) ||
                other.officeAddress == officeAddress) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.levelOfInvolvement, levelOfInvolvement) ||
                other.levelOfInvolvement == levelOfInvolvement) &&
            (identical(other.startWorkingDate, startWorkingDate) ||
                other.startWorkingDate == startWorkingDate) &&
            const DeepCollectionEquality()
                .equals(other._industryList, _industryList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isSubmitting,
      submitCount,
      companyName,
      companyLogo,
      selectedIndustry,
      companyType,
      organisation,
      dateRegistered,
      notRegistered,
      website,
      contactNumber,
      officeAddress,
      jobTitle,
      levelOfInvolvement,
      startWorkingDate,
      const DeepCollectionEquality().hash(_industryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCompanyStateImplCopyWith<_$CreateCompanyStateImpl> get copyWith =>
      __$$CreateCompanyStateImplCopyWithImpl<_$CreateCompanyStateImpl>(
          this, _$identity);
}

abstract class _CreateCompanyState extends CreateCompanyState {
  const factory _CreateCompanyState(
      {final bool isSubmitting,
      final int submitCount,
      final String companyName,
      final String companyLogo,
      final Industry? selectedIndustry,
      final CompanyType? companyType,
      final String organisation,
      final DateTime? dateRegistered,
      final bool notRegistered,
      final String website,
      final String contactNumber,
      final String officeAddress,
      final String jobTitle,
      final LevelOfInvolvement? levelOfInvolvement,
      final DateTime? startWorkingDate,
      final List<Industry> industryList}) = _$CreateCompanyStateImpl;
  const _CreateCompanyState._() : super._();

  @override
  bool get isSubmitting;
  @override
  int get submitCount;
  @override
  String get companyName;
  @override
  String get companyLogo;
  @override
  Industry? get selectedIndustry;
  @override
  CompanyType? get companyType;
  @override
  String get organisation;
  @override
  DateTime? get dateRegistered;
  @override
  bool get notRegistered;
  @override
  String get website;
  @override
  String get contactNumber;
  @override
  String get officeAddress;
  @override
  String get jobTitle;
  @override
  LevelOfInvolvement? get levelOfInvolvement;
  @override
  DateTime? get startWorkingDate;
  @override
  List<Industry> get industryList;
  @override
  @JsonKey(ignore: true)
  _$$CreateCompanyStateImplCopyWith<_$CreateCompanyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
