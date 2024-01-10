// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_participants_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddMembers {
  List<User> get members => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddMembersCopyWith<AddMembers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddMembersCopyWith<$Res> {
  factory $AddMembersCopyWith(
          AddMembers value, $Res Function(AddMembers) then) =
      _$AddMembersCopyWithImpl<$Res, AddMembers>;
  @useResult
  $Res call({List<User> members});
}

/// @nodoc
class _$AddMembersCopyWithImpl<$Res, $Val extends AddMembers>
    implements $AddMembersCopyWith<$Res> {
  _$AddMembersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? members = null,
  }) {
    return _then(_value.copyWith(
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddMembersImplCopyWith<$Res>
    implements $AddMembersCopyWith<$Res> {
  factory _$$AddMembersImplCopyWith(
          _$AddMembersImpl value, $Res Function(_$AddMembersImpl) then) =
      __$$AddMembersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<User> members});
}

/// @nodoc
class __$$AddMembersImplCopyWithImpl<$Res>
    extends _$AddMembersCopyWithImpl<$Res, _$AddMembersImpl>
    implements _$$AddMembersImplCopyWith<$Res> {
  __$$AddMembersImplCopyWithImpl(
      _$AddMembersImpl _value, $Res Function(_$AddMembersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? members = null,
  }) {
    return _then(_$AddMembersImpl(
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$AddMembersImpl implements _AddMembers {
  const _$AddMembersImpl({required final List<User> members})
      : _members = members;

  final List<User> _members;
  @override
  List<User> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  String toString() {
    return 'AddMembers(members: $members)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddMembersImpl &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_members));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddMembersImplCopyWith<_$AddMembersImpl> get copyWith =>
      __$$AddMembersImplCopyWithImpl<_$AddMembersImpl>(this, _$identity);
}

abstract class _AddMembers implements AddMembers {
  const factory _AddMembers({required final List<User> members}) =
      _$AddMembersImpl;

  @override
  List<User> get members;
  @override
  @JsonKey(ignore: true)
  _$$AddMembersImplCopyWith<_$AddMembersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RemoveMember {
  ConversationMember get member => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoveMemberCopyWith<RemoveMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveMemberCopyWith<$Res> {
  factory $RemoveMemberCopyWith(
          RemoveMember value, $Res Function(RemoveMember) then) =
      _$RemoveMemberCopyWithImpl<$Res, RemoveMember>;
  @useResult
  $Res call({ConversationMember member});

  $ConversationMemberCopyWith<$Res> get member;
}

/// @nodoc
class _$RemoveMemberCopyWithImpl<$Res, $Val extends RemoveMember>
    implements $RemoveMemberCopyWith<$Res> {
  _$RemoveMemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? member = null,
  }) {
    return _then(_value.copyWith(
      member: null == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as ConversationMember,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConversationMemberCopyWith<$Res> get member {
    return $ConversationMemberCopyWith<$Res>(_value.member, (value) {
      return _then(_value.copyWith(member: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RemoveMemberImplCopyWith<$Res>
    implements $RemoveMemberCopyWith<$Res> {
  factory _$$RemoveMemberImplCopyWith(
          _$RemoveMemberImpl value, $Res Function(_$RemoveMemberImpl) then) =
      __$$RemoveMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConversationMember member});

  @override
  $ConversationMemberCopyWith<$Res> get member;
}

/// @nodoc
class __$$RemoveMemberImplCopyWithImpl<$Res>
    extends _$RemoveMemberCopyWithImpl<$Res, _$RemoveMemberImpl>
    implements _$$RemoveMemberImplCopyWith<$Res> {
  __$$RemoveMemberImplCopyWithImpl(
      _$RemoveMemberImpl _value, $Res Function(_$RemoveMemberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? member = null,
  }) {
    return _then(_$RemoveMemberImpl(
      member: null == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as ConversationMember,
    ));
  }
}

/// @nodoc

class _$RemoveMemberImpl implements _RemoveMember {
  const _$RemoveMemberImpl({required this.member});

  @override
  final ConversationMember member;

  @override
  String toString() {
    return 'RemoveMember(member: $member)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveMemberImpl &&
            (identical(other.member, member) || other.member == member));
  }

  @override
  int get hashCode => Object.hash(runtimeType, member);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveMemberImplCopyWith<_$RemoveMemberImpl> get copyWith =>
      __$$RemoveMemberImplCopyWithImpl<_$RemoveMemberImpl>(this, _$identity);
}

abstract class _RemoveMember implements RemoveMember {
  const factory _RemoveMember({required final ConversationMember member}) =
      _$RemoveMemberImpl;

  @override
  ConversationMember get member;
  @override
  @JsonKey(ignore: true)
  _$$RemoveMemberImplCopyWith<_$RemoveMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatParticipantsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<ConversationMember> get members => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatParticipantsStateCopyWith<ChatParticipantsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatParticipantsStateCopyWith<$Res> {
  factory $ChatParticipantsStateCopyWith(ChatParticipantsState value,
          $Res Function(ChatParticipantsState) then) =
      _$ChatParticipantsStateCopyWithImpl<$Res, ChatParticipantsState>;
  @useResult
  $Res call({bool isLoading, List<ConversationMember> members});
}

/// @nodoc
class _$ChatParticipantsStateCopyWithImpl<$Res,
        $Val extends ChatParticipantsState>
    implements $ChatParticipantsStateCopyWith<$Res> {
  _$ChatParticipantsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? members = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<ConversationMember>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatParticipantsStateImplCopyWith<$Res>
    implements $ChatParticipantsStateCopyWith<$Res> {
  factory _$$ChatParticipantsStateImplCopyWith(
          _$ChatParticipantsStateImpl value,
          $Res Function(_$ChatParticipantsStateImpl) then) =
      __$$ChatParticipantsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<ConversationMember> members});
}

/// @nodoc
class __$$ChatParticipantsStateImplCopyWithImpl<$Res>
    extends _$ChatParticipantsStateCopyWithImpl<$Res,
        _$ChatParticipantsStateImpl>
    implements _$$ChatParticipantsStateImplCopyWith<$Res> {
  __$$ChatParticipantsStateImplCopyWithImpl(_$ChatParticipantsStateImpl _value,
      $Res Function(_$ChatParticipantsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? members = null,
  }) {
    return _then(_$ChatParticipantsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<ConversationMember>,
    ));
  }
}

/// @nodoc

class _$ChatParticipantsStateImpl extends _ChatParticipantsState {
  const _$ChatParticipantsStateImpl(
      {this.isLoading = false,
      final List<ConversationMember> members = const <ConversationMember>[]})
      : _members = members,
        super._();

  @override
  @JsonKey()
  final bool isLoading;
  final List<ConversationMember> _members;
  @override
  @JsonKey()
  List<ConversationMember> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  String toString() {
    return 'ChatParticipantsState(isLoading: $isLoading, members: $members)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatParticipantsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_members));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatParticipantsStateImplCopyWith<_$ChatParticipantsStateImpl>
      get copyWith => __$$ChatParticipantsStateImplCopyWithImpl<
          _$ChatParticipantsStateImpl>(this, _$identity);
}

abstract class _ChatParticipantsState extends ChatParticipantsState {
  const factory _ChatParticipantsState(
      {final bool isLoading,
      final List<ConversationMember> members}) = _$ChatParticipantsStateImpl;
  const _ChatParticipantsState._() : super._();

  @override
  bool get isLoading;
  @override
  List<ConversationMember> get members;
  @override
  @JsonKey(ignore: true)
  _$$ChatParticipantsStateImplCopyWith<_$ChatParticipantsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
