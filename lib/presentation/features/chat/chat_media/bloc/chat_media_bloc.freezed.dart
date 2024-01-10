// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_media_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatMediaInitialEvent {}

/// @nodoc
abstract class $ChatMediaInitialEventCopyWith<$Res> {
  factory $ChatMediaInitialEventCopyWith(ChatMediaInitialEvent value,
          $Res Function(ChatMediaInitialEvent) then) =
      _$ChatMediaInitialEventCopyWithImpl<$Res, ChatMediaInitialEvent>;
}

/// @nodoc
class _$ChatMediaInitialEventCopyWithImpl<$Res,
        $Val extends ChatMediaInitialEvent>
    implements $ChatMediaInitialEventCopyWith<$Res> {
  _$ChatMediaInitialEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChatMediaInitialEventImplCopyWith<$Res> {
  factory _$$ChatMediaInitialEventImplCopyWith(
          _$ChatMediaInitialEventImpl value,
          $Res Function(_$ChatMediaInitialEventImpl) then) =
      __$$ChatMediaInitialEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatMediaInitialEventImplCopyWithImpl<$Res>
    extends _$ChatMediaInitialEventCopyWithImpl<$Res,
        _$ChatMediaInitialEventImpl>
    implements _$$ChatMediaInitialEventImplCopyWith<$Res> {
  __$$ChatMediaInitialEventImplCopyWithImpl(_$ChatMediaInitialEventImpl _value,
      $Res Function(_$ChatMediaInitialEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatMediaInitialEventImpl implements _ChatMediaInitialEvent {
  const _$ChatMediaInitialEventImpl();

  @override
  String toString() {
    return 'ChatMediaInitialEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMediaInitialEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _ChatMediaInitialEvent implements ChatMediaInitialEvent {
  const factory _ChatMediaInitialEvent() = _$ChatMediaInitialEventImpl;
}

/// @nodoc
mixin _$ChatMediaState {
  List<Document> get documents => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatMediaStateCopyWith<ChatMediaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMediaStateCopyWith<$Res> {
  factory $ChatMediaStateCopyWith(
          ChatMediaState value, $Res Function(ChatMediaState) then) =
      _$ChatMediaStateCopyWithImpl<$Res, ChatMediaState>;
  @useResult
  $Res call({List<Document> documents, bool isLoading});
}

/// @nodoc
class _$ChatMediaStateCopyWithImpl<$Res, $Val extends ChatMediaState>
    implements $ChatMediaStateCopyWith<$Res> {
  _$ChatMediaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documents = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      documents: null == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Document>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatMediaStateImplCopyWith<$Res>
    implements $ChatMediaStateCopyWith<$Res> {
  factory _$$ChatMediaStateImplCopyWith(_$ChatMediaStateImpl value,
          $Res Function(_$ChatMediaStateImpl) then) =
      __$$ChatMediaStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Document> documents, bool isLoading});
}

/// @nodoc
class __$$ChatMediaStateImplCopyWithImpl<$Res>
    extends _$ChatMediaStateCopyWithImpl<$Res, _$ChatMediaStateImpl>
    implements _$$ChatMediaStateImplCopyWith<$Res> {
  __$$ChatMediaStateImplCopyWithImpl(
      _$ChatMediaStateImpl _value, $Res Function(_$ChatMediaStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documents = null,
    Object? isLoading = null,
  }) {
    return _then(_$ChatMediaStateImpl(
      documents: null == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Document>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChatMediaStateImpl implements _ChatMediaState {
  const _$ChatMediaStateImpl(
      {final List<Document> documents = const <Document>[],
      this.isLoading = false})
      : _documents = documents;

  final List<Document> _documents;
  @override
  @JsonKey()
  List<Document> get documents {
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'ChatMediaState(documents: $documents, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMediaStateImpl &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_documents), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMediaStateImplCopyWith<_$ChatMediaStateImpl> get copyWith =>
      __$$ChatMediaStateImplCopyWithImpl<_$ChatMediaStateImpl>(
          this, _$identity);
}

abstract class _ChatMediaState implements ChatMediaState {
  const factory _ChatMediaState(
      {final List<Document> documents,
      final bool isLoading}) = _$ChatMediaStateImpl;

  @override
  List<Document> get documents;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$ChatMediaStateImplCopyWith<_$ChatMediaStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
