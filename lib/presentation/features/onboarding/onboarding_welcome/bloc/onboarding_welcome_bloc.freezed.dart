// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_welcome_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetStartButtonPressed {}

/// @nodoc
abstract class $GetStartButtonPressedCopyWith<$Res> {
  factory $GetStartButtonPressedCopyWith(GetStartButtonPressed value,
          $Res Function(GetStartButtonPressed) then) =
      _$GetStartButtonPressedCopyWithImpl<$Res, GetStartButtonPressed>;
}

/// @nodoc
class _$GetStartButtonPressedCopyWithImpl<$Res,
        $Val extends GetStartButtonPressed>
    implements $GetStartButtonPressedCopyWith<$Res> {
  _$GetStartButtonPressedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetStartButtonPressedImplCopyWith<$Res> {
  factory _$$GetStartButtonPressedImplCopyWith(
          _$GetStartButtonPressedImpl value,
          $Res Function(_$GetStartButtonPressedImpl) then) =
      __$$GetStartButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetStartButtonPressedImplCopyWithImpl<$Res>
    extends _$GetStartButtonPressedCopyWithImpl<$Res,
        _$GetStartButtonPressedImpl>
    implements _$$GetStartButtonPressedImplCopyWith<$Res> {
  __$$GetStartButtonPressedImplCopyWithImpl(_$GetStartButtonPressedImpl _value,
      $Res Function(_$GetStartButtonPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetStartButtonPressedImpl implements _GetStartButtonPressed {
  const _$GetStartButtonPressedImpl();

  @override
  String toString() {
    return 'GetStartButtonPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStartButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _GetStartButtonPressed implements GetStartButtonPressed {
  const factory _GetStartButtonPressed() = _$GetStartButtonPressedImpl;
}

/// @nodoc
mixin _$WelcomeOnboardingState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  String get filePath => throw _privateConstructorUsedError;
  String get currentAvatar => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WelcomeOnboardingStateCopyWith<WelcomeOnboardingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WelcomeOnboardingStateCopyWith<$Res> {
  factory $WelcomeOnboardingStateCopyWith(WelcomeOnboardingState value,
          $Res Function(WelcomeOnboardingState) then) =
      _$WelcomeOnboardingStateCopyWithImpl<$Res, WelcomeOnboardingState>;
  @useResult
  $Res call({bool isSubmitting, String filePath, String currentAvatar});
}

/// @nodoc
class _$WelcomeOnboardingStateCopyWithImpl<$Res,
        $Val extends WelcomeOnboardingState>
    implements $WelcomeOnboardingStateCopyWith<$Res> {
  _$WelcomeOnboardingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? filePath = null,
    Object? currentAvatar = null,
  }) {
    return _then(_value.copyWith(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      currentAvatar: null == currentAvatar
          ? _value.currentAvatar
          : currentAvatar // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WelcomeOnboardingStateImplCopyWith<$Res>
    implements $WelcomeOnboardingStateCopyWith<$Res> {
  factory _$$WelcomeOnboardingStateImplCopyWith(
          _$WelcomeOnboardingStateImpl value,
          $Res Function(_$WelcomeOnboardingStateImpl) then) =
      __$$WelcomeOnboardingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSubmitting, String filePath, String currentAvatar});
}

/// @nodoc
class __$$WelcomeOnboardingStateImplCopyWithImpl<$Res>
    extends _$WelcomeOnboardingStateCopyWithImpl<$Res,
        _$WelcomeOnboardingStateImpl>
    implements _$$WelcomeOnboardingStateImplCopyWith<$Res> {
  __$$WelcomeOnboardingStateImplCopyWithImpl(
      _$WelcomeOnboardingStateImpl _value,
      $Res Function(_$WelcomeOnboardingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? filePath = null,
    Object? currentAvatar = null,
  }) {
    return _then(_$WelcomeOnboardingStateImpl(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      currentAvatar: null == currentAvatar
          ? _value.currentAvatar
          : currentAvatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WelcomeOnboardingStateImpl extends _WelcomeOnboardingState {
  const _$WelcomeOnboardingStateImpl(
      {this.isSubmitting = false, this.filePath = '', this.currentAvatar = ''})
      : super._();

  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  @JsonKey()
  final String filePath;
  @override
  @JsonKey()
  final String currentAvatar;

  @override
  String toString() {
    return 'WelcomeOnboardingState(isSubmitting: $isSubmitting, filePath: $filePath, currentAvatar: $currentAvatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WelcomeOnboardingStateImpl &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.currentAvatar, currentAvatar) ||
                other.currentAvatar == currentAvatar));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isSubmitting, filePath, currentAvatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WelcomeOnboardingStateImplCopyWith<_$WelcomeOnboardingStateImpl>
      get copyWith => __$$WelcomeOnboardingStateImplCopyWithImpl<
          _$WelcomeOnboardingStateImpl>(this, _$identity);
}

abstract class _WelcomeOnboardingState extends WelcomeOnboardingState {
  const factory _WelcomeOnboardingState(
      {final bool isSubmitting,
      final String filePath,
      final String currentAvatar}) = _$WelcomeOnboardingStateImpl;
  const _WelcomeOnboardingState._() : super._();

  @override
  bool get isSubmitting;
  @override
  String get filePath;
  @override
  String get currentAvatar;
  @override
  @JsonKey(ignore: true)
  _$$WelcomeOnboardingStateImplCopyWith<_$WelcomeOnboardingStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
