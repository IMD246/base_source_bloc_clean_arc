// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'programs_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProgramsInitial {}

/// @nodoc
abstract class $ProgramsInitialCopyWith<$Res> {
  factory $ProgramsInitialCopyWith(
          ProgramsInitial value, $Res Function(ProgramsInitial) then) =
      _$ProgramsInitialCopyWithImpl<$Res, ProgramsInitial>;
}

/// @nodoc
class _$ProgramsInitialCopyWithImpl<$Res, $Val extends ProgramsInitial>
    implements $ProgramsInitialCopyWith<$Res> {
  _$ProgramsInitialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProgramsInitialImplCopyWith<$Res> {
  factory _$$ProgramsInitialImplCopyWith(_$ProgramsInitialImpl value,
          $Res Function(_$ProgramsInitialImpl) then) =
      __$$ProgramsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProgramsInitialImplCopyWithImpl<$Res>
    extends _$ProgramsInitialCopyWithImpl<$Res, _$ProgramsInitialImpl>
    implements _$$ProgramsInitialImplCopyWith<$Res> {
  __$$ProgramsInitialImplCopyWithImpl(
      _$ProgramsInitialImpl _value, $Res Function(_$ProgramsInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProgramsInitialImpl implements _ProgramsInitial {
  const _$ProgramsInitialImpl();

  @override
  String toString() {
    return 'ProgramsInitial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProgramsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _ProgramsInitial implements ProgramsInitial {
  const factory _ProgramsInitial() = _$ProgramsInitialImpl;
}

/// @nodoc
mixin _$ProgramsSearch {
  String get query => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProgramsSearchCopyWith<ProgramsSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramsSearchCopyWith<$Res> {
  factory $ProgramsSearchCopyWith(
          ProgramsSearch value, $Res Function(ProgramsSearch) then) =
      _$ProgramsSearchCopyWithImpl<$Res, ProgramsSearch>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$ProgramsSearchCopyWithImpl<$Res, $Val extends ProgramsSearch>
    implements $ProgramsSearchCopyWith<$Res> {
  _$ProgramsSearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgramsSearchImplCopyWith<$Res>
    implements $ProgramsSearchCopyWith<$Res> {
  factory _$$ProgramsSearchImplCopyWith(_$ProgramsSearchImpl value,
          $Res Function(_$ProgramsSearchImpl) then) =
      __$$ProgramsSearchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$ProgramsSearchImplCopyWithImpl<$Res>
    extends _$ProgramsSearchCopyWithImpl<$Res, _$ProgramsSearchImpl>
    implements _$$ProgramsSearchImplCopyWith<$Res> {
  __$$ProgramsSearchImplCopyWithImpl(
      _$ProgramsSearchImpl _value, $Res Function(_$ProgramsSearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$ProgramsSearchImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProgramsSearchImpl implements _ProgramsSearch {
  const _$ProgramsSearchImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'ProgramsSearch(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramsSearchImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramsSearchImplCopyWith<_$ProgramsSearchImpl> get copyWith =>
      __$$ProgramsSearchImplCopyWithImpl<_$ProgramsSearchImpl>(
          this, _$identity);
}

abstract class _ProgramsSearch implements ProgramsSearch {
  const factory _ProgramsSearch(final String query) = _$ProgramsSearchImpl;

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$ProgramsSearchImplCopyWith<_$ProgramsSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProgramsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Program> get programs => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  List<Program> get filteredPrograms => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProgramsStateCopyWith<ProgramsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramsStateCopyWith<$Res> {
  factory $ProgramsStateCopyWith(
          ProgramsState value, $Res Function(ProgramsState) then) =
      _$ProgramsStateCopyWithImpl<$Res, ProgramsState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<Program> programs,
      String query,
      List<Program> filteredPrograms});
}

/// @nodoc
class _$ProgramsStateCopyWithImpl<$Res, $Val extends ProgramsState>
    implements $ProgramsStateCopyWith<$Res> {
  _$ProgramsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? programs = null,
    Object? query = null,
    Object? filteredPrograms = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      programs: null == programs
          ? _value.programs
          : programs // ignore: cast_nullable_to_non_nullable
              as List<Program>,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      filteredPrograms: null == filteredPrograms
          ? _value.filteredPrograms
          : filteredPrograms // ignore: cast_nullable_to_non_nullable
              as List<Program>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgramsStateImplCopyWith<$Res>
    implements $ProgramsStateCopyWith<$Res> {
  factory _$$ProgramsStateImplCopyWith(
          _$ProgramsStateImpl value, $Res Function(_$ProgramsStateImpl) then) =
      __$$ProgramsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<Program> programs,
      String query,
      List<Program> filteredPrograms});
}

/// @nodoc
class __$$ProgramsStateImplCopyWithImpl<$Res>
    extends _$ProgramsStateCopyWithImpl<$Res, _$ProgramsStateImpl>
    implements _$$ProgramsStateImplCopyWith<$Res> {
  __$$ProgramsStateImplCopyWithImpl(
      _$ProgramsStateImpl _value, $Res Function(_$ProgramsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? programs = null,
    Object? query = null,
    Object? filteredPrograms = null,
  }) {
    return _then(_$ProgramsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      programs: null == programs
          ? _value._programs
          : programs // ignore: cast_nullable_to_non_nullable
              as List<Program>,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      filteredPrograms: null == filteredPrograms
          ? _value._filteredPrograms
          : filteredPrograms // ignore: cast_nullable_to_non_nullable
              as List<Program>,
    ));
  }
}

/// @nodoc

class _$ProgramsStateImpl extends _ProgramsState {
  const _$ProgramsStateImpl(
      {this.isLoading = false,
      final List<Program> programs = const [],
      this.query = '',
      final List<Program> filteredPrograms = const []})
      : _programs = programs,
        _filteredPrograms = filteredPrograms,
        super._();

  @override
  @JsonKey()
  final bool isLoading;
  final List<Program> _programs;
  @override
  @JsonKey()
  List<Program> get programs {
    if (_programs is EqualUnmodifiableListView) return _programs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_programs);
  }

  @override
  @JsonKey()
  final String query;
  final List<Program> _filteredPrograms;
  @override
  @JsonKey()
  List<Program> get filteredPrograms {
    if (_filteredPrograms is EqualUnmodifiableListView)
      return _filteredPrograms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredPrograms);
  }

  @override
  String toString() {
    return 'ProgramsState(isLoading: $isLoading, programs: $programs, query: $query, filteredPrograms: $filteredPrograms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._programs, _programs) &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality()
                .equals(other._filteredPrograms, _filteredPrograms));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_programs),
      query,
      const DeepCollectionEquality().hash(_filteredPrograms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramsStateImplCopyWith<_$ProgramsStateImpl> get copyWith =>
      __$$ProgramsStateImplCopyWithImpl<_$ProgramsStateImpl>(this, _$identity);
}

abstract class _ProgramsState extends ProgramsState {
  const factory _ProgramsState(
      {final bool isLoading,
      final List<Program> programs,
      final String query,
      final List<Program> filteredPrograms}) = _$ProgramsStateImpl;
  const _ProgramsState._() : super._();

  @override
  bool get isLoading;
  @override
  List<Program> get programs;
  @override
  String get query;
  @override
  List<Program> get filteredPrograms;
  @override
  @JsonKey(ignore: true)
  _$$ProgramsStateImplCopyWith<_$ProgramsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
