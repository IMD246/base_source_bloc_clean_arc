// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_information_bloc.dart';

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
mixin _$CompanyChanged {
  CompanyProfile get company => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompanyChangedCopyWith<CompanyChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyChangedCopyWith<$Res> {
  factory $CompanyChangedCopyWith(
          CompanyChanged value, $Res Function(CompanyChanged) then) =
      _$CompanyChangedCopyWithImpl<$Res, CompanyChanged>;
  @useResult
  $Res call({CompanyProfile company});

  $CompanyProfileCopyWith<$Res> get company;
}

/// @nodoc
class _$CompanyChangedCopyWithImpl<$Res, $Val extends CompanyChanged>
    implements $CompanyChangedCopyWith<$Res> {
  _$CompanyChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = null,
  }) {
    return _then(_value.copyWith(
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyProfile,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyProfileCopyWith<$Res> get company {
    return $CompanyProfileCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompanyChangedImplCopyWith<$Res>
    implements $CompanyChangedCopyWith<$Res> {
  factory _$$CompanyChangedImplCopyWith(_$CompanyChangedImpl value,
          $Res Function(_$CompanyChangedImpl) then) =
      __$$CompanyChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CompanyProfile company});

  @override
  $CompanyProfileCopyWith<$Res> get company;
}

/// @nodoc
class __$$CompanyChangedImplCopyWithImpl<$Res>
    extends _$CompanyChangedCopyWithImpl<$Res, _$CompanyChangedImpl>
    implements _$$CompanyChangedImplCopyWith<$Res> {
  __$$CompanyChangedImplCopyWithImpl(
      _$CompanyChangedImpl _value, $Res Function(_$CompanyChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = null,
  }) {
    return _then(_$CompanyChangedImpl(
      null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyProfile,
    ));
  }
}

/// @nodoc

class _$CompanyChangedImpl implements _CompanyChanged {
  const _$CompanyChangedImpl(this.company);

  @override
  final CompanyProfile company;

  @override
  String toString() {
    return 'CompanyChanged(company: $company)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyChangedImpl &&
            (identical(other.company, company) || other.company == company));
  }

  @override
  int get hashCode => Object.hash(runtimeType, company);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyChangedImplCopyWith<_$CompanyChangedImpl> get copyWith =>
      __$$CompanyChangedImplCopyWithImpl<_$CompanyChangedImpl>(
          this, _$identity);
}

abstract class _CompanyChanged implements CompanyChanged {
  const factory _CompanyChanged(final CompanyProfile company) =
      _$CompanyChangedImpl;

  @override
  CompanyProfile get company;
  @override
  @JsonKey(ignore: true)
  _$$CompanyChangedImplCopyWith<_$CompanyChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
mixin _$StartWorkingDateChanged {
  String get startWorkingDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StartWorkingDateChangedCopyWith<StartWorkingDateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartWorkingDateChangedCopyWith<$Res> {
  factory $StartWorkingDateChangedCopyWith(StartWorkingDateChanged value,
          $Res Function(StartWorkingDateChanged) then) =
      _$StartWorkingDateChangedCopyWithImpl<$Res, StartWorkingDateChanged>;
  @useResult
  $Res call({String startWorkingDate});
}

/// @nodoc
class _$StartWorkingDateChangedCopyWithImpl<$Res,
        $Val extends StartWorkingDateChanged>
    implements $StartWorkingDateChangedCopyWith<$Res> {
  _$StartWorkingDateChangedCopyWithImpl(this._value, this._then);

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
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartWorkingDateChangedImplCopyWith<$Res>
    implements $StartWorkingDateChangedCopyWith<$Res> {
  factory _$$StartWorkingDateChangedImplCopyWith(
          _$StartWorkingDateChangedImpl value,
          $Res Function(_$StartWorkingDateChangedImpl) then) =
      __$$StartWorkingDateChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String startWorkingDate});
}

/// @nodoc
class __$$StartWorkingDateChangedImplCopyWithImpl<$Res>
    extends _$StartWorkingDateChangedCopyWithImpl<$Res,
        _$StartWorkingDateChangedImpl>
    implements _$$StartWorkingDateChangedImplCopyWith<$Res> {
  __$$StartWorkingDateChangedImplCopyWithImpl(
      _$StartWorkingDateChangedImpl _value,
      $Res Function(_$StartWorkingDateChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startWorkingDate = null,
  }) {
    return _then(_$StartWorkingDateChangedImpl(
      null == startWorkingDate
          ? _value.startWorkingDate
          : startWorkingDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartWorkingDateChangedImpl implements _StartWorkingDateChanged {
  const _$StartWorkingDateChangedImpl(this.startWorkingDate);

  @override
  final String startWorkingDate;

  @override
  String toString() {
    return 'StartWorkingDateChanged(startWorkingDate: $startWorkingDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartWorkingDateChangedImpl &&
            (identical(other.startWorkingDate, startWorkingDate) ||
                other.startWorkingDate == startWorkingDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startWorkingDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartWorkingDateChangedImplCopyWith<_$StartWorkingDateChangedImpl>
      get copyWith => __$$StartWorkingDateChangedImplCopyWithImpl<
          _$StartWorkingDateChangedImpl>(this, _$identity);
}

abstract class _StartWorkingDateChanged implements StartWorkingDateChanged {
  const factory _StartWorkingDateChanged(final String startWorkingDate) =
      _$StartWorkingDateChangedImpl;

  @override
  String get startWorkingDate;
  @override
  @JsonKey(ignore: true)
  _$$StartWorkingDateChangedImplCopyWith<_$StartWorkingDateChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CompanyInformationState {
  String get jobTitle => throw _privateConstructorUsedError;
  LevelOfInvolvement? get levelOfInvolvement =>
      throw _privateConstructorUsedError;
  String get startWorkingDate => throw _privateConstructorUsedError;
  int get submitCount => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isSignInSuccess => throw _privateConstructorUsedError;
  List<CompanyProfile> get companyList => throw _privateConstructorUsedError;
  CompanyProfile? get selectedCompany => throw _privateConstructorUsedError;
  SignInFailureReason? get failureReason => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompanyInformationStateCopyWith<CompanyInformationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyInformationStateCopyWith<$Res> {
  factory $CompanyInformationStateCopyWith(CompanyInformationState value,
          $Res Function(CompanyInformationState) then) =
      _$CompanyInformationStateCopyWithImpl<$Res, CompanyInformationState>;
  @useResult
  $Res call(
      {String jobTitle,
      LevelOfInvolvement? levelOfInvolvement,
      String startWorkingDate,
      int submitCount,
      bool isSubmitting,
      bool isSignInSuccess,
      List<CompanyProfile> companyList,
      CompanyProfile? selectedCompany,
      SignInFailureReason? failureReason});

  $CompanyProfileCopyWith<$Res>? get selectedCompany;
}

/// @nodoc
class _$CompanyInformationStateCopyWithImpl<$Res,
        $Val extends CompanyInformationState>
    implements $CompanyInformationStateCopyWith<$Res> {
  _$CompanyInformationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobTitle = null,
    Object? levelOfInvolvement = freezed,
    Object? startWorkingDate = null,
    Object? submitCount = null,
    Object? isSubmitting = null,
    Object? isSignInSuccess = null,
    Object? companyList = null,
    Object? selectedCompany = freezed,
    Object? failureReason = freezed,
  }) {
    return _then(_value.copyWith(
      jobTitle: null == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String,
      levelOfInvolvement: freezed == levelOfInvolvement
          ? _value.levelOfInvolvement
          : levelOfInvolvement // ignore: cast_nullable_to_non_nullable
              as LevelOfInvolvement?,
      startWorkingDate: null == startWorkingDate
          ? _value.startWorkingDate
          : startWorkingDate // ignore: cast_nullable_to_non_nullable
              as String,
      submitCount: null == submitCount
          ? _value.submitCount
          : submitCount // ignore: cast_nullable_to_non_nullable
              as int,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignInSuccess: null == isSignInSuccess
          ? _value.isSignInSuccess
          : isSignInSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      companyList: null == companyList
          ? _value.companyList
          : companyList // ignore: cast_nullable_to_non_nullable
              as List<CompanyProfile>,
      selectedCompany: freezed == selectedCompany
          ? _value.selectedCompany
          : selectedCompany // ignore: cast_nullable_to_non_nullable
              as CompanyProfile?,
      failureReason: freezed == failureReason
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as SignInFailureReason?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyProfileCopyWith<$Res>? get selectedCompany {
    if (_value.selectedCompany == null) {
      return null;
    }

    return $CompanyProfileCopyWith<$Res>(_value.selectedCompany!, (value) {
      return _then(_value.copyWith(selectedCompany: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompanyInformationStateImplCopyWith<$Res>
    implements $CompanyInformationStateCopyWith<$Res> {
  factory _$$CompanyInformationStateImplCopyWith(
          _$CompanyInformationStateImpl value,
          $Res Function(_$CompanyInformationStateImpl) then) =
      __$$CompanyInformationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String jobTitle,
      LevelOfInvolvement? levelOfInvolvement,
      String startWorkingDate,
      int submitCount,
      bool isSubmitting,
      bool isSignInSuccess,
      List<CompanyProfile> companyList,
      CompanyProfile? selectedCompany,
      SignInFailureReason? failureReason});

  @override
  $CompanyProfileCopyWith<$Res>? get selectedCompany;
}

/// @nodoc
class __$$CompanyInformationStateImplCopyWithImpl<$Res>
    extends _$CompanyInformationStateCopyWithImpl<$Res,
        _$CompanyInformationStateImpl>
    implements _$$CompanyInformationStateImplCopyWith<$Res> {
  __$$CompanyInformationStateImplCopyWithImpl(
      _$CompanyInformationStateImpl _value,
      $Res Function(_$CompanyInformationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobTitle = null,
    Object? levelOfInvolvement = freezed,
    Object? startWorkingDate = null,
    Object? submitCount = null,
    Object? isSubmitting = null,
    Object? isSignInSuccess = null,
    Object? companyList = null,
    Object? selectedCompany = freezed,
    Object? failureReason = freezed,
  }) {
    return _then(_$CompanyInformationStateImpl(
      jobTitle: null == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String,
      levelOfInvolvement: freezed == levelOfInvolvement
          ? _value.levelOfInvolvement
          : levelOfInvolvement // ignore: cast_nullable_to_non_nullable
              as LevelOfInvolvement?,
      startWorkingDate: null == startWorkingDate
          ? _value.startWorkingDate
          : startWorkingDate // ignore: cast_nullable_to_non_nullable
              as String,
      submitCount: null == submitCount
          ? _value.submitCount
          : submitCount // ignore: cast_nullable_to_non_nullable
              as int,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignInSuccess: null == isSignInSuccess
          ? _value.isSignInSuccess
          : isSignInSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      companyList: null == companyList
          ? _value._companyList
          : companyList // ignore: cast_nullable_to_non_nullable
              as List<CompanyProfile>,
      selectedCompany: freezed == selectedCompany
          ? _value.selectedCompany
          : selectedCompany // ignore: cast_nullable_to_non_nullable
              as CompanyProfile?,
      failureReason: freezed == failureReason
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as SignInFailureReason?,
    ));
  }
}

/// @nodoc

class _$CompanyInformationStateImpl extends _CompanyInformationState {
  const _$CompanyInformationStateImpl(
      {this.jobTitle = '',
      this.levelOfInvolvement = null,
      this.startWorkingDate = '',
      this.submitCount = 0,
      this.isSubmitting = false,
      this.isSignInSuccess = false,
      final List<CompanyProfile> companyList = const [],
      this.selectedCompany = null,
      this.failureReason})
      : _companyList = companyList,
        super._();

  @override
  @JsonKey()
  final String jobTitle;
  @override
  @JsonKey()
  final LevelOfInvolvement? levelOfInvolvement;
  @override
  @JsonKey()
  final String startWorkingDate;
  @override
  @JsonKey()
  final int submitCount;
  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  @JsonKey()
  final bool isSignInSuccess;
  final List<CompanyProfile> _companyList;
  @override
  @JsonKey()
  List<CompanyProfile> get companyList {
    if (_companyList is EqualUnmodifiableListView) return _companyList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_companyList);
  }

  @override
  @JsonKey()
  final CompanyProfile? selectedCompany;
  @override
  final SignInFailureReason? failureReason;

  @override
  String toString() {
    return 'CompanyInformationState(jobTitle: $jobTitle, levelOfInvolvement: $levelOfInvolvement, startWorkingDate: $startWorkingDate, submitCount: $submitCount, isSubmitting: $isSubmitting, isSignInSuccess: $isSignInSuccess, companyList: $companyList, selectedCompany: $selectedCompany, failureReason: $failureReason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyInformationStateImpl &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.levelOfInvolvement, levelOfInvolvement) ||
                other.levelOfInvolvement == levelOfInvolvement) &&
            (identical(other.startWorkingDate, startWorkingDate) ||
                other.startWorkingDate == startWorkingDate) &&
            (identical(other.submitCount, submitCount) ||
                other.submitCount == submitCount) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isSignInSuccess, isSignInSuccess) ||
                other.isSignInSuccess == isSignInSuccess) &&
            const DeepCollectionEquality()
                .equals(other._companyList, _companyList) &&
            (identical(other.selectedCompany, selectedCompany) ||
                other.selectedCompany == selectedCompany) &&
            (identical(other.failureReason, failureReason) ||
                other.failureReason == failureReason));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      jobTitle,
      levelOfInvolvement,
      startWorkingDate,
      submitCount,
      isSubmitting,
      isSignInSuccess,
      const DeepCollectionEquality().hash(_companyList),
      selectedCompany,
      failureReason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyInformationStateImplCopyWith<_$CompanyInformationStateImpl>
      get copyWith => __$$CompanyInformationStateImplCopyWithImpl<
          _$CompanyInformationStateImpl>(this, _$identity);
}

abstract class _CompanyInformationState extends CompanyInformationState {
  const factory _CompanyInformationState(
          {final String jobTitle,
          final LevelOfInvolvement? levelOfInvolvement,
          final String startWorkingDate,
          final int submitCount,
          final bool isSubmitting,
          final bool isSignInSuccess,
          final List<CompanyProfile> companyList,
          final CompanyProfile? selectedCompany,
          final SignInFailureReason? failureReason}) =
      _$CompanyInformationStateImpl;
  const _CompanyInformationState._() : super._();

  @override
  String get jobTitle;
  @override
  LevelOfInvolvement? get levelOfInvolvement;
  @override
  String get startWorkingDate;
  @override
  int get submitCount;
  @override
  bool get isSubmitting;
  @override
  bool get isSignInSuccess;
  @override
  List<CompanyProfile> get companyList;
  @override
  CompanyProfile? get selectedCompany;
  @override
  SignInFailureReason? get failureReason;
  @override
  @JsonKey(ignore: true)
  _$$CompanyInformationStateImplCopyWith<_$CompanyInformationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
