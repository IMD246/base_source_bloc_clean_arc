// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_step.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OnboardingStep _$OnboardingStepFromJson(Map<String, dynamic> json) {
  return _OnboardingStep.fromJson(json);
}

/// @nodoc
mixin _$OnboardingStep {
  int? get userID => throw _privateConstructorUsedError;
  int? get userOnboardingStepID => throw _privateConstructorUsedError;
  dynamic get userOnboardingStepResponseID =>
      throw _privateConstructorUsedError;
  int? get inOutUserOnboardingID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnboardingStepCopyWith<OnboardingStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingStepCopyWith<$Res> {
  factory $OnboardingStepCopyWith(
          OnboardingStep value, $Res Function(OnboardingStep) then) =
      _$OnboardingStepCopyWithImpl<$Res, OnboardingStep>;
  @useResult
  $Res call(
      {int? userID,
      int? userOnboardingStepID,
      dynamic userOnboardingStepResponseID,
      int? inOutUserOnboardingID});
}

/// @nodoc
class _$OnboardingStepCopyWithImpl<$Res, $Val extends OnboardingStep>
    implements $OnboardingStepCopyWith<$Res> {
  _$OnboardingStepCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = freezed,
    Object? userOnboardingStepID = freezed,
    Object? userOnboardingStepResponseID = freezed,
    Object? inOutUserOnboardingID = freezed,
  }) {
    return _then(_value.copyWith(
      userID: freezed == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as int?,
      userOnboardingStepID: freezed == userOnboardingStepID
          ? _value.userOnboardingStepID
          : userOnboardingStepID // ignore: cast_nullable_to_non_nullable
              as int?,
      userOnboardingStepResponseID: freezed == userOnboardingStepResponseID
          ? _value.userOnboardingStepResponseID
          : userOnboardingStepResponseID // ignore: cast_nullable_to_non_nullable
              as dynamic,
      inOutUserOnboardingID: freezed == inOutUserOnboardingID
          ? _value.inOutUserOnboardingID
          : inOutUserOnboardingID // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnboardingStepImplCopyWith<$Res>
    implements $OnboardingStepCopyWith<$Res> {
  factory _$$OnboardingStepImplCopyWith(_$OnboardingStepImpl value,
          $Res Function(_$OnboardingStepImpl) then) =
      __$$OnboardingStepImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? userID,
      int? userOnboardingStepID,
      dynamic userOnboardingStepResponseID,
      int? inOutUserOnboardingID});
}

/// @nodoc
class __$$OnboardingStepImplCopyWithImpl<$Res>
    extends _$OnboardingStepCopyWithImpl<$Res, _$OnboardingStepImpl>
    implements _$$OnboardingStepImplCopyWith<$Res> {
  __$$OnboardingStepImplCopyWithImpl(
      _$OnboardingStepImpl _value, $Res Function(_$OnboardingStepImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = freezed,
    Object? userOnboardingStepID = freezed,
    Object? userOnboardingStepResponseID = freezed,
    Object? inOutUserOnboardingID = freezed,
  }) {
    return _then(_$OnboardingStepImpl(
      userID: freezed == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as int?,
      userOnboardingStepID: freezed == userOnboardingStepID
          ? _value.userOnboardingStepID
          : userOnboardingStepID // ignore: cast_nullable_to_non_nullable
              as int?,
      userOnboardingStepResponseID: freezed == userOnboardingStepResponseID
          ? _value.userOnboardingStepResponseID
          : userOnboardingStepResponseID // ignore: cast_nullable_to_non_nullable
              as dynamic,
      inOutUserOnboardingID: freezed == inOutUserOnboardingID
          ? _value.inOutUserOnboardingID
          : inOutUserOnboardingID // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnboardingStepImpl implements _OnboardingStep {
  const _$OnboardingStepImpl(
      {this.userID,
      this.userOnboardingStepID,
      this.userOnboardingStepResponseID,
      this.inOutUserOnboardingID});

  factory _$OnboardingStepImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnboardingStepImplFromJson(json);

  @override
  final int? userID;
  @override
  final int? userOnboardingStepID;
  @override
  final dynamic userOnboardingStepResponseID;
  @override
  final int? inOutUserOnboardingID;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingStepImpl &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.userOnboardingStepID, userOnboardingStepID) ||
                other.userOnboardingStepID == userOnboardingStepID) &&
            const DeepCollectionEquality().equals(
                other.userOnboardingStepResponseID,
                userOnboardingStepResponseID) &&
            (identical(other.inOutUserOnboardingID, inOutUserOnboardingID) ||
                other.inOutUserOnboardingID == inOutUserOnboardingID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userID,
      userOnboardingStepID,
      const DeepCollectionEquality().hash(userOnboardingStepResponseID),
      inOutUserOnboardingID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingStepImplCopyWith<_$OnboardingStepImpl> get copyWith =>
      __$$OnboardingStepImplCopyWithImpl<_$OnboardingStepImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OnboardingStepImplToJson(
      this,
    );
  }
}

abstract class _OnboardingStep implements OnboardingStep {
  const factory _OnboardingStep(
      {final int? userID,
      final int? userOnboardingStepID,
      final dynamic userOnboardingStepResponseID,
      final int? inOutUserOnboardingID}) = _$OnboardingStepImpl;

  factory _OnboardingStep.fromJson(Map<String, dynamic> json) =
      _$OnboardingStepImpl.fromJson;

  @override
  int? get userID;
  @override
  int? get userOnboardingStepID;
  @override
  dynamic get userOnboardingStepResponseID;
  @override
  int? get inOutUserOnboardingID;
  @override
  @JsonKey(ignore: true)
  _$$OnboardingStepImplCopyWith<_$OnboardingStepImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
