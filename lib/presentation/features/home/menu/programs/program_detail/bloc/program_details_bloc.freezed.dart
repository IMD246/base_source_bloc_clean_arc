// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'program_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProgramDetailsInitial {
  Program get program => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProgramDetailsInitialCopyWith<ProgramDetailsInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramDetailsInitialCopyWith<$Res> {
  factory $ProgramDetailsInitialCopyWith(ProgramDetailsInitial value,
          $Res Function(ProgramDetailsInitial) then) =
      _$ProgramDetailsInitialCopyWithImpl<$Res, ProgramDetailsInitial>;
  @useResult
  $Res call({Program program});

  $ProgramCopyWith<$Res> get program;
}

/// @nodoc
class _$ProgramDetailsInitialCopyWithImpl<$Res,
        $Val extends ProgramDetailsInitial>
    implements $ProgramDetailsInitialCopyWith<$Res> {
  _$ProgramDetailsInitialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? program = null,
  }) {
    return _then(_value.copyWith(
      program: null == program
          ? _value.program
          : program // ignore: cast_nullable_to_non_nullable
              as Program,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProgramCopyWith<$Res> get program {
    return $ProgramCopyWith<$Res>(_value.program, (value) {
      return _then(_value.copyWith(program: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProgramDetailsInitialImplCopyWith<$Res>
    implements $ProgramDetailsInitialCopyWith<$Res> {
  factory _$$ProgramDetailsInitialImplCopyWith(
          _$ProgramDetailsInitialImpl value,
          $Res Function(_$ProgramDetailsInitialImpl) then) =
      __$$ProgramDetailsInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Program program});

  @override
  $ProgramCopyWith<$Res> get program;
}

/// @nodoc
class __$$ProgramDetailsInitialImplCopyWithImpl<$Res>
    extends _$ProgramDetailsInitialCopyWithImpl<$Res,
        _$ProgramDetailsInitialImpl>
    implements _$$ProgramDetailsInitialImplCopyWith<$Res> {
  __$$ProgramDetailsInitialImplCopyWithImpl(_$ProgramDetailsInitialImpl _value,
      $Res Function(_$ProgramDetailsInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? program = null,
  }) {
    return _then(_$ProgramDetailsInitialImpl(
      null == program
          ? _value.program
          : program // ignore: cast_nullable_to_non_nullable
              as Program,
    ));
  }
}

/// @nodoc

class _$ProgramDetailsInitialImpl implements _ProgramDetailsInitial {
  const _$ProgramDetailsInitialImpl(this.program);

  @override
  final Program program;

  @override
  String toString() {
    return 'ProgramDetailsInitial(program: $program)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramDetailsInitialImpl &&
            (identical(other.program, program) || other.program == program));
  }

  @override
  int get hashCode => Object.hash(runtimeType, program);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramDetailsInitialImplCopyWith<_$ProgramDetailsInitialImpl>
      get copyWith => __$$ProgramDetailsInitialImplCopyWithImpl<
          _$ProgramDetailsInitialImpl>(this, _$identity);
}

abstract class _ProgramDetailsInitial implements ProgramDetailsInitial {
  const factory _ProgramDetailsInitial(final Program program) =
      _$ProgramDetailsInitialImpl;

  @override
  Program get program;
  @override
  @JsonKey(ignore: true)
  _$$ProgramDetailsInitialImplCopyWith<_$ProgramDetailsInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProgramDetailsState {
  Program? get program => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProgramDetailsStateCopyWith<ProgramDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramDetailsStateCopyWith<$Res> {
  factory $ProgramDetailsStateCopyWith(
          ProgramDetailsState value, $Res Function(ProgramDetailsState) then) =
      _$ProgramDetailsStateCopyWithImpl<$Res, ProgramDetailsState>;
  @useResult
  $Res call({Program? program, bool isLoading});

  $ProgramCopyWith<$Res>? get program;
}

/// @nodoc
class _$ProgramDetailsStateCopyWithImpl<$Res, $Val extends ProgramDetailsState>
    implements $ProgramDetailsStateCopyWith<$Res> {
  _$ProgramDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? program = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      program: freezed == program
          ? _value.program
          : program // ignore: cast_nullable_to_non_nullable
              as Program?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProgramCopyWith<$Res>? get program {
    if (_value.program == null) {
      return null;
    }

    return $ProgramCopyWith<$Res>(_value.program!, (value) {
      return _then(_value.copyWith(program: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProgramDetailsStateImplCopyWith<$Res>
    implements $ProgramDetailsStateCopyWith<$Res> {
  factory _$$ProgramDetailsStateImplCopyWith(_$ProgramDetailsStateImpl value,
          $Res Function(_$ProgramDetailsStateImpl) then) =
      __$$ProgramDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Program? program, bool isLoading});

  @override
  $ProgramCopyWith<$Res>? get program;
}

/// @nodoc
class __$$ProgramDetailsStateImplCopyWithImpl<$Res>
    extends _$ProgramDetailsStateCopyWithImpl<$Res, _$ProgramDetailsStateImpl>
    implements _$$ProgramDetailsStateImplCopyWith<$Res> {
  __$$ProgramDetailsStateImplCopyWithImpl(_$ProgramDetailsStateImpl _value,
      $Res Function(_$ProgramDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? program = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$ProgramDetailsStateImpl(
      program: freezed == program
          ? _value.program
          : program // ignore: cast_nullable_to_non_nullable
              as Program?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ProgramDetailsStateImpl implements _ProgramDetailsState {
  const _$ProgramDetailsStateImpl({this.program, this.isLoading = false});

  @override
  final Program? program;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'ProgramDetailsState(program: $program, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramDetailsStateImpl &&
            (identical(other.program, program) || other.program == program) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, program, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramDetailsStateImplCopyWith<_$ProgramDetailsStateImpl> get copyWith =>
      __$$ProgramDetailsStateImplCopyWithImpl<_$ProgramDetailsStateImpl>(
          this, _$identity);
}

abstract class _ProgramDetailsState implements ProgramDetailsState {
  const factory _ProgramDetailsState(
      {final Program? program,
      final bool isLoading}) = _$ProgramDetailsStateImpl;

  @override
  Program? get program;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$ProgramDetailsStateImplCopyWith<_$ProgramDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
