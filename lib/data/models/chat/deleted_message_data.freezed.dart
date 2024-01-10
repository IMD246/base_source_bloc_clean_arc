// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deleted_message_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeletedMessageData _$DeletedMessageDataFromJson(Map<String, dynamic> json) {
  return _DeletedMessageData.fromJson(json);
}

/// @nodoc
mixin _$DeletedMessageData {
  int get discussionID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeletedMessageDataCopyWith<DeletedMessageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeletedMessageDataCopyWith<$Res> {
  factory $DeletedMessageDataCopyWith(
          DeletedMessageData value, $Res Function(DeletedMessageData) then) =
      _$DeletedMessageDataCopyWithImpl<$Res, DeletedMessageData>;
  @useResult
  $Res call({int discussionID});
}

/// @nodoc
class _$DeletedMessageDataCopyWithImpl<$Res, $Val extends DeletedMessageData>
    implements $DeletedMessageDataCopyWith<$Res> {
  _$DeletedMessageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discussionID = null,
  }) {
    return _then(_value.copyWith(
      discussionID: null == discussionID
          ? _value.discussionID
          : discussionID // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeletedMessageDataImplCopyWith<$Res>
    implements $DeletedMessageDataCopyWith<$Res> {
  factory _$$DeletedMessageDataImplCopyWith(_$DeletedMessageDataImpl value,
          $Res Function(_$DeletedMessageDataImpl) then) =
      __$$DeletedMessageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int discussionID});
}

/// @nodoc
class __$$DeletedMessageDataImplCopyWithImpl<$Res>
    extends _$DeletedMessageDataCopyWithImpl<$Res, _$DeletedMessageDataImpl>
    implements _$$DeletedMessageDataImplCopyWith<$Res> {
  __$$DeletedMessageDataImplCopyWithImpl(_$DeletedMessageDataImpl _value,
      $Res Function(_$DeletedMessageDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discussionID = null,
  }) {
    return _then(_$DeletedMessageDataImpl(
      discussionID: null == discussionID
          ? _value.discussionID
          : discussionID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeletedMessageDataImpl implements _DeletedMessageData {
  const _$DeletedMessageDataImpl({required this.discussionID});

  factory _$DeletedMessageDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeletedMessageDataImplFromJson(json);

  @override
  final int discussionID;

  @override
  String toString() {
    return 'DeletedMessageData(discussionID: $discussionID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletedMessageDataImpl &&
            (identical(other.discussionID, discussionID) ||
                other.discussionID == discussionID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, discussionID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletedMessageDataImplCopyWith<_$DeletedMessageDataImpl> get copyWith =>
      __$$DeletedMessageDataImplCopyWithImpl<_$DeletedMessageDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeletedMessageDataImplToJson(
      this,
    );
  }
}

abstract class _DeletedMessageData implements DeletedMessageData {
  const factory _DeletedMessageData({required final int discussionID}) =
      _$DeletedMessageDataImpl;

  factory _DeletedMessageData.fromJson(Map<String, dynamic> json) =
      _$DeletedMessageDataImpl.fromJson;

  @override
  int get discussionID;
  @override
  @JsonKey(ignore: true)
  _$$DeletedMessageDataImplCopyWith<_$DeletedMessageDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
