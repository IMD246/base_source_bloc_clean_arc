// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalendarState {
  List<Event> get events => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarStateCopyWith<CalendarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarStateCopyWith<$Res> {
  factory $CalendarStateCopyWith(
          CalendarState value, $Res Function(CalendarState) then) =
      _$CalendarStateCopyWithImpl<$Res, CalendarState>;
  @useResult
  $Res call({List<Event> events, bool isLoading});
}

/// @nodoc
class _$CalendarStateCopyWithImpl<$Res, $Val extends CalendarState>
    implements $CalendarStateCopyWith<$Res> {
  _$CalendarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalendarStateImplCopyWith<$Res>
    implements $CalendarStateCopyWith<$Res> {
  factory _$$CalendarStateImplCopyWith(
          _$CalendarStateImpl value, $Res Function(_$CalendarStateImpl) then) =
      __$$CalendarStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Event> events, bool isLoading});
}

/// @nodoc
class __$$CalendarStateImplCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res, _$CalendarStateImpl>
    implements _$$CalendarStateImplCopyWith<$Res> {
  __$$CalendarStateImplCopyWithImpl(
      _$CalendarStateImpl _value, $Res Function(_$CalendarStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? isLoading = null,
  }) {
    return _then(_$CalendarStateImpl(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CalendarStateImpl extends _CalendarState {
  const _$CalendarStateImpl(
      {required final List<Event> events, this.isLoading = false})
      : _events = events,
        super._();

  final List<Event> _events;
  @override
  List<Event> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'CalendarState(events: $events, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarStateImpl &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_events), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarStateImplCopyWith<_$CalendarStateImpl> get copyWith =>
      __$$CalendarStateImplCopyWithImpl<_$CalendarStateImpl>(this, _$identity);
}

abstract class _CalendarState extends CalendarState {
  const factory _CalendarState(
      {required final List<Event> events,
      final bool isLoading}) = _$CalendarStateImpl;
  const _CalendarState._() : super._();

  @override
  List<Event> get events;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$CalendarStateImplCopyWith<_$CalendarStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CalendarInitiated {}

/// @nodoc
abstract class $CalendarInitiatedCopyWith<$Res> {
  factory $CalendarInitiatedCopyWith(
          CalendarInitiated value, $Res Function(CalendarInitiated) then) =
      _$CalendarInitiatedCopyWithImpl<$Res, CalendarInitiated>;
}

/// @nodoc
class _$CalendarInitiatedCopyWithImpl<$Res, $Val extends CalendarInitiated>
    implements $CalendarInitiatedCopyWith<$Res> {
  _$CalendarInitiatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CalendarInitiatedImplCopyWith<$Res> {
  factory _$$CalendarInitiatedImplCopyWith(_$CalendarInitiatedImpl value,
          $Res Function(_$CalendarInitiatedImpl) then) =
      __$$CalendarInitiatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CalendarInitiatedImplCopyWithImpl<$Res>
    extends _$CalendarInitiatedCopyWithImpl<$Res, _$CalendarInitiatedImpl>
    implements _$$CalendarInitiatedImplCopyWith<$Res> {
  __$$CalendarInitiatedImplCopyWithImpl(_$CalendarInitiatedImpl _value,
      $Res Function(_$CalendarInitiatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CalendarInitiatedImpl implements _CalendarInitiated {
  const _$CalendarInitiatedImpl();

  @override
  String toString() {
    return 'CalendarInitiated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CalendarInitiatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _CalendarInitiated implements CalendarInitiated {
  const factory _CalendarInitiated() = _$CalendarInitiatedImpl;
}

/// @nodoc
mixin _$GetEvents {
  bool get isRefresh => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetEventsCopyWith<GetEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEventsCopyWith<$Res> {
  factory $GetEventsCopyWith(GetEvents value, $Res Function(GetEvents) then) =
      _$GetEventsCopyWithImpl<$Res, GetEvents>;
  @useResult
  $Res call({bool isRefresh});
}

/// @nodoc
class _$GetEventsCopyWithImpl<$Res, $Val extends GetEvents>
    implements $GetEventsCopyWith<$Res> {
  _$GetEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRefresh = null,
  }) {
    return _then(_value.copyWith(
      isRefresh: null == isRefresh
          ? _value.isRefresh
          : isRefresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetEventsImplCopyWith<$Res>
    implements $GetEventsCopyWith<$Res> {
  factory _$$GetEventsImplCopyWith(
          _$GetEventsImpl value, $Res Function(_$GetEventsImpl) then) =
      __$$GetEventsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isRefresh});
}

/// @nodoc
class __$$GetEventsImplCopyWithImpl<$Res>
    extends _$GetEventsCopyWithImpl<$Res, _$GetEventsImpl>
    implements _$$GetEventsImplCopyWith<$Res> {
  __$$GetEventsImplCopyWithImpl(
      _$GetEventsImpl _value, $Res Function(_$GetEventsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRefresh = null,
  }) {
    return _then(_$GetEventsImpl(
      isRefresh: null == isRefresh
          ? _value.isRefresh
          : isRefresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetEventsImpl implements _GetEvents {
  const _$GetEventsImpl({required this.isRefresh});

  @override
  final bool isRefresh;

  @override
  String toString() {
    return 'GetEvents(isRefresh: $isRefresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEventsImpl &&
            (identical(other.isRefresh, isRefresh) ||
                other.isRefresh == isRefresh));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRefresh);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEventsImplCopyWith<_$GetEventsImpl> get copyWith =>
      __$$GetEventsImplCopyWithImpl<_$GetEventsImpl>(this, _$identity);
}

abstract class _GetEvents implements GetEvents {
  const factory _GetEvents({required final bool isRefresh}) = _$GetEventsImpl;

  @override
  bool get isRefresh;
  @override
  @JsonKey(ignore: true)
  _$$GetEventsImplCopyWith<_$GetEventsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
