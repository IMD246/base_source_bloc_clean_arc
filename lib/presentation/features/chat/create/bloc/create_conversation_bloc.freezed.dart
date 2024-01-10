// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_conversation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchUser {
  String get query => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchUserCopyWith<SearchUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUserCopyWith<$Res> {
  factory $SearchUserCopyWith(
          SearchUser value, $Res Function(SearchUser) then) =
      _$SearchUserCopyWithImpl<$Res, SearchUser>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$SearchUserCopyWithImpl<$Res, $Val extends SearchUser>
    implements $SearchUserCopyWith<$Res> {
  _$SearchUserCopyWithImpl(this._value, this._then);

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
abstract class _$$SearchUserImplCopyWith<$Res>
    implements $SearchUserCopyWith<$Res> {
  factory _$$SearchUserImplCopyWith(
          _$SearchUserImpl value, $Res Function(_$SearchUserImpl) then) =
      __$$SearchUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchUserImplCopyWithImpl<$Res>
    extends _$SearchUserCopyWithImpl<$Res, _$SearchUserImpl>
    implements _$$SearchUserImplCopyWith<$Res> {
  __$$SearchUserImplCopyWithImpl(
      _$SearchUserImpl _value, $Res Function(_$SearchUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchUserImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchUserImpl implements _SearchUser {
  const _$SearchUserImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchUser(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchUserImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchUserImplCopyWith<_$SearchUserImpl> get copyWith =>
      __$$SearchUserImplCopyWithImpl<_$SearchUserImpl>(this, _$identity);
}

abstract class _SearchUser implements SearchUser {
  const factory _SearchUser(final String query) = _$SearchUserImpl;

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$SearchUserImplCopyWith<_$SearchUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateSearchedUsers {
  List<User> get users => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateSearchedUsersCopyWith<UpdateSearchedUsers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSearchedUsersCopyWith<$Res> {
  factory $UpdateSearchedUsersCopyWith(
          UpdateSearchedUsers value, $Res Function(UpdateSearchedUsers) then) =
      _$UpdateSearchedUsersCopyWithImpl<$Res, UpdateSearchedUsers>;
  @useResult
  $Res call({List<User> users});
}

/// @nodoc
class _$UpdateSearchedUsersCopyWithImpl<$Res, $Val extends UpdateSearchedUsers>
    implements $UpdateSearchedUsersCopyWith<$Res> {
  _$UpdateSearchedUsersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateSearchedUsersImplCopyWith<$Res>
    implements $UpdateSearchedUsersCopyWith<$Res> {
  factory _$$UpdateSearchedUsersImplCopyWith(_$UpdateSearchedUsersImpl value,
          $Res Function(_$UpdateSearchedUsersImpl) then) =
      __$$UpdateSearchedUsersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<User> users});
}

/// @nodoc
class __$$UpdateSearchedUsersImplCopyWithImpl<$Res>
    extends _$UpdateSearchedUsersCopyWithImpl<$Res, _$UpdateSearchedUsersImpl>
    implements _$$UpdateSearchedUsersImplCopyWith<$Res> {
  __$$UpdateSearchedUsersImplCopyWithImpl(_$UpdateSearchedUsersImpl _value,
      $Res Function(_$UpdateSearchedUsersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$UpdateSearchedUsersImpl(
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$UpdateSearchedUsersImpl implements _UpdateSearchedUsers {
  const _$UpdateSearchedUsersImpl(final List<User> users) : _users = users;

  final List<User> _users;
  @override
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'UpdateSearchedUsers(users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSearchedUsersImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSearchedUsersImplCopyWith<_$UpdateSearchedUsersImpl> get copyWith =>
      __$$UpdateSearchedUsersImplCopyWithImpl<_$UpdateSearchedUsersImpl>(
          this, _$identity);
}

abstract class _UpdateSearchedUsers implements UpdateSearchedUsers {
  const factory _UpdateSearchedUsers(final List<User> users) =
      _$UpdateSearchedUsersImpl;

  @override
  List<User> get users;
  @override
  @JsonKey(ignore: true)
  _$$UpdateSearchedUsersImplCopyWith<_$UpdateSearchedUsersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddUsers {
  List<User> get users => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddUsersCopyWith<AddUsers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUsersCopyWith<$Res> {
  factory $AddUsersCopyWith(AddUsers value, $Res Function(AddUsers) then) =
      _$AddUsersCopyWithImpl<$Res, AddUsers>;
  @useResult
  $Res call({List<User> users});
}

/// @nodoc
class _$AddUsersCopyWithImpl<$Res, $Val extends AddUsers>
    implements $AddUsersCopyWith<$Res> {
  _$AddUsersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddUsersImplCopyWith<$Res>
    implements $AddUsersCopyWith<$Res> {
  factory _$$AddUsersImplCopyWith(
          _$AddUsersImpl value, $Res Function(_$AddUsersImpl) then) =
      __$$AddUsersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<User> users});
}

/// @nodoc
class __$$AddUsersImplCopyWithImpl<$Res>
    extends _$AddUsersCopyWithImpl<$Res, _$AddUsersImpl>
    implements _$$AddUsersImplCopyWith<$Res> {
  __$$AddUsersImplCopyWithImpl(
      _$AddUsersImpl _value, $Res Function(_$AddUsersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$AddUsersImpl(
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$AddUsersImpl implements _AddUsers {
  const _$AddUsersImpl(final List<User> users) : _users = users;

  final List<User> _users;
  @override
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'AddUsers(users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddUsersImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddUsersImplCopyWith<_$AddUsersImpl> get copyWith =>
      __$$AddUsersImplCopyWithImpl<_$AddUsersImpl>(this, _$identity);
}

abstract class _AddUsers implements AddUsers {
  const factory _AddUsers(final List<User> users) = _$AddUsersImpl;

  @override
  List<User> get users;
  @override
  @JsonKey(ignore: true)
  _$$AddUsersImplCopyWith<_$AddUsersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RemoveUser {
  User get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoveUserCopyWith<RemoveUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveUserCopyWith<$Res> {
  factory $RemoveUserCopyWith(
          RemoveUser value, $Res Function(RemoveUser) then) =
      _$RemoveUserCopyWithImpl<$Res, RemoveUser>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$RemoveUserCopyWithImpl<$Res, $Val extends RemoveUser>
    implements $RemoveUserCopyWith<$Res> {
  _$RemoveUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RemoveUserImplCopyWith<$Res>
    implements $RemoveUserCopyWith<$Res> {
  factory _$$RemoveUserImplCopyWith(
          _$RemoveUserImpl value, $Res Function(_$RemoveUserImpl) then) =
      __$$RemoveUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$RemoveUserImplCopyWithImpl<$Res>
    extends _$RemoveUserCopyWithImpl<$Res, _$RemoveUserImpl>
    implements _$$RemoveUserImplCopyWith<$Res> {
  __$$RemoveUserImplCopyWithImpl(
      _$RemoveUserImpl _value, $Res Function(_$RemoveUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$RemoveUserImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$RemoveUserImpl implements _RemoveUser {
  const _$RemoveUserImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'RemoveUser(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveUserImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveUserImplCopyWith<_$RemoveUserImpl> get copyWith =>
      __$$RemoveUserImplCopyWithImpl<_$RemoveUserImpl>(this, _$identity);
}

abstract class _RemoveUser implements RemoveUser {
  const factory _RemoveUser(final User user) = _$RemoveUserImpl;

  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$RemoveUserImplCopyWith<_$RemoveUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateGroupName {
  String get chatName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateGroupNameCopyWith<UpdateGroupName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateGroupNameCopyWith<$Res> {
  factory $UpdateGroupNameCopyWith(
          UpdateGroupName value, $Res Function(UpdateGroupName) then) =
      _$UpdateGroupNameCopyWithImpl<$Res, UpdateGroupName>;
  @useResult
  $Res call({String chatName});
}

/// @nodoc
class _$UpdateGroupNameCopyWithImpl<$Res, $Val extends UpdateGroupName>
    implements $UpdateGroupNameCopyWith<$Res> {
  _$UpdateGroupNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatName = null,
  }) {
    return _then(_value.copyWith(
      chatName: null == chatName
          ? _value.chatName
          : chatName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateGroupNameImplCopyWith<$Res>
    implements $UpdateGroupNameCopyWith<$Res> {
  factory _$$UpdateGroupNameImplCopyWith(_$UpdateGroupNameImpl value,
          $Res Function(_$UpdateGroupNameImpl) then) =
      __$$UpdateGroupNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String chatName});
}

/// @nodoc
class __$$UpdateGroupNameImplCopyWithImpl<$Res>
    extends _$UpdateGroupNameCopyWithImpl<$Res, _$UpdateGroupNameImpl>
    implements _$$UpdateGroupNameImplCopyWith<$Res> {
  __$$UpdateGroupNameImplCopyWithImpl(
      _$UpdateGroupNameImpl _value, $Res Function(_$UpdateGroupNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatName = null,
  }) {
    return _then(_$UpdateGroupNameImpl(
      null == chatName
          ? _value.chatName
          : chatName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateGroupNameImpl implements _UpdateGroupName {
  const _$UpdateGroupNameImpl(this.chatName);

  @override
  final String chatName;

  @override
  String toString() {
    return 'UpdateGroupName(chatName: $chatName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateGroupNameImpl &&
            (identical(other.chatName, chatName) ||
                other.chatName == chatName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateGroupNameImplCopyWith<_$UpdateGroupNameImpl> get copyWith =>
      __$$UpdateGroupNameImplCopyWithImpl<_$UpdateGroupNameImpl>(
          this, _$identity);
}

abstract class _UpdateGroupName implements UpdateGroupName {
  const factory _UpdateGroupName(final String chatName) = _$UpdateGroupNameImpl;

  @override
  String get chatName;
  @override
  @JsonKey(ignore: true)
  _$$UpdateGroupNameImplCopyWith<_$UpdateGroupNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateConversation {}

/// @nodoc
abstract class $CreateConversationCopyWith<$Res> {
  factory $CreateConversationCopyWith(
          CreateConversation value, $Res Function(CreateConversation) then) =
      _$CreateConversationCopyWithImpl<$Res, CreateConversation>;
}

/// @nodoc
class _$CreateConversationCopyWithImpl<$Res, $Val extends CreateConversation>
    implements $CreateConversationCopyWith<$Res> {
  _$CreateConversationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateConversationImplCopyWith<$Res> {
  factory _$$CreateConversationImplCopyWith(_$CreateConversationImpl value,
          $Res Function(_$CreateConversationImpl) then) =
      __$$CreateConversationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateConversationImplCopyWithImpl<$Res>
    extends _$CreateConversationCopyWithImpl<$Res, _$CreateConversationImpl>
    implements _$$CreateConversationImplCopyWith<$Res> {
  __$$CreateConversationImplCopyWithImpl(_$CreateConversationImpl _value,
      $Res Function(_$CreateConversationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateConversationImpl implements _CreateConversation {
  const _$CreateConversationImpl();

  @override
  String toString() {
    return 'CreateConversation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateConversationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _CreateConversation implements CreateConversation {
  const factory _CreateConversation() = _$CreateConversationImpl;
}

/// @nodoc
mixin _$CreateConversationState {
  String get chatName => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  List<User> get selectedMembers => throw _privateConstructorUsedError;
  List<User> get searchedUsers => throw _privateConstructorUsedError;
  bool get isSearching => throw _privateConstructorUsedError;
  Conversation? get createdConversation => throw _privateConstructorUsedError;
  bool get isCreatingConversation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateConversationStateCopyWith<CreateConversationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateConversationStateCopyWith<$Res> {
  factory $CreateConversationStateCopyWith(CreateConversationState value,
          $Res Function(CreateConversationState) then) =
      _$CreateConversationStateCopyWithImpl<$Res, CreateConversationState>;
  @useResult
  $Res call(
      {String chatName,
      String query,
      List<User> selectedMembers,
      List<User> searchedUsers,
      bool isSearching,
      Conversation? createdConversation,
      bool isCreatingConversation});

  $ConversationCopyWith<$Res>? get createdConversation;
}

/// @nodoc
class _$CreateConversationStateCopyWithImpl<$Res,
        $Val extends CreateConversationState>
    implements $CreateConversationStateCopyWith<$Res> {
  _$CreateConversationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatName = null,
    Object? query = null,
    Object? selectedMembers = null,
    Object? searchedUsers = null,
    Object? isSearching = null,
    Object? createdConversation = freezed,
    Object? isCreatingConversation = null,
  }) {
    return _then(_value.copyWith(
      chatName: null == chatName
          ? _value.chatName
          : chatName // ignore: cast_nullable_to_non_nullable
              as String,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      selectedMembers: null == selectedMembers
          ? _value.selectedMembers
          : selectedMembers // ignore: cast_nullable_to_non_nullable
              as List<User>,
      searchedUsers: null == searchedUsers
          ? _value.searchedUsers
          : searchedUsers // ignore: cast_nullable_to_non_nullable
              as List<User>,
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      createdConversation: freezed == createdConversation
          ? _value.createdConversation
          : createdConversation // ignore: cast_nullable_to_non_nullable
              as Conversation?,
      isCreatingConversation: null == isCreatingConversation
          ? _value.isCreatingConversation
          : isCreatingConversation // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConversationCopyWith<$Res>? get createdConversation {
    if (_value.createdConversation == null) {
      return null;
    }

    return $ConversationCopyWith<$Res>(_value.createdConversation!, (value) {
      return _then(_value.copyWith(createdConversation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateConversationStateImplCopyWith<$Res>
    implements $CreateConversationStateCopyWith<$Res> {
  factory _$$CreateConversationStateImplCopyWith(
          _$CreateConversationStateImpl value,
          $Res Function(_$CreateConversationStateImpl) then) =
      __$$CreateConversationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String chatName,
      String query,
      List<User> selectedMembers,
      List<User> searchedUsers,
      bool isSearching,
      Conversation? createdConversation,
      bool isCreatingConversation});

  @override
  $ConversationCopyWith<$Res>? get createdConversation;
}

/// @nodoc
class __$$CreateConversationStateImplCopyWithImpl<$Res>
    extends _$CreateConversationStateCopyWithImpl<$Res,
        _$CreateConversationStateImpl>
    implements _$$CreateConversationStateImplCopyWith<$Res> {
  __$$CreateConversationStateImplCopyWithImpl(
      _$CreateConversationStateImpl _value,
      $Res Function(_$CreateConversationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatName = null,
    Object? query = null,
    Object? selectedMembers = null,
    Object? searchedUsers = null,
    Object? isSearching = null,
    Object? createdConversation = freezed,
    Object? isCreatingConversation = null,
  }) {
    return _then(_$CreateConversationStateImpl(
      chatName: null == chatName
          ? _value.chatName
          : chatName // ignore: cast_nullable_to_non_nullable
              as String,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      selectedMembers: null == selectedMembers
          ? _value._selectedMembers
          : selectedMembers // ignore: cast_nullable_to_non_nullable
              as List<User>,
      searchedUsers: null == searchedUsers
          ? _value._searchedUsers
          : searchedUsers // ignore: cast_nullable_to_non_nullable
              as List<User>,
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      createdConversation: freezed == createdConversation
          ? _value.createdConversation
          : createdConversation // ignore: cast_nullable_to_non_nullable
              as Conversation?,
      isCreatingConversation: null == isCreatingConversation
          ? _value.isCreatingConversation
          : isCreatingConversation // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CreateConversationStateImpl extends _CreateConversationState {
  _$CreateConversationStateImpl(
      {this.chatName = '',
      this.query = '',
      final List<User> selectedMembers = const <User>[],
      final List<User> searchedUsers = const <User>[],
      this.isSearching = false,
      this.createdConversation,
      this.isCreatingConversation = false})
      : _selectedMembers = selectedMembers,
        _searchedUsers = searchedUsers,
        super._();

  @override
  @JsonKey()
  final String chatName;
  @override
  @JsonKey()
  final String query;
  final List<User> _selectedMembers;
  @override
  @JsonKey()
  List<User> get selectedMembers {
    if (_selectedMembers is EqualUnmodifiableListView) return _selectedMembers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedMembers);
  }

  final List<User> _searchedUsers;
  @override
  @JsonKey()
  List<User> get searchedUsers {
    if (_searchedUsers is EqualUnmodifiableListView) return _searchedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchedUsers);
  }

  @override
  @JsonKey()
  final bool isSearching;
  @override
  final Conversation? createdConversation;
  @override
  @JsonKey()
  final bool isCreatingConversation;

  @override
  String toString() {
    return 'CreateConversationState(chatName: $chatName, query: $query, selectedMembers: $selectedMembers, searchedUsers: $searchedUsers, isSearching: $isSearching, createdConversation: $createdConversation, isCreatingConversation: $isCreatingConversation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateConversationStateImpl &&
            (identical(other.chatName, chatName) ||
                other.chatName == chatName) &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality()
                .equals(other._selectedMembers, _selectedMembers) &&
            const DeepCollectionEquality()
                .equals(other._searchedUsers, _searchedUsers) &&
            (identical(other.isSearching, isSearching) ||
                other.isSearching == isSearching) &&
            (identical(other.createdConversation, createdConversation) ||
                other.createdConversation == createdConversation) &&
            (identical(other.isCreatingConversation, isCreatingConversation) ||
                other.isCreatingConversation == isCreatingConversation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      chatName,
      query,
      const DeepCollectionEquality().hash(_selectedMembers),
      const DeepCollectionEquality().hash(_searchedUsers),
      isSearching,
      createdConversation,
      isCreatingConversation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateConversationStateImplCopyWith<_$CreateConversationStateImpl>
      get copyWith => __$$CreateConversationStateImplCopyWithImpl<
          _$CreateConversationStateImpl>(this, _$identity);
}

abstract class _CreateConversationState extends CreateConversationState {
  factory _CreateConversationState(
      {final String chatName,
      final String query,
      final List<User> selectedMembers,
      final List<User> searchedUsers,
      final bool isSearching,
      final Conversation? createdConversation,
      final bool isCreatingConversation}) = _$CreateConversationStateImpl;
  _CreateConversationState._() : super._();

  @override
  String get chatName;
  @override
  String get query;
  @override
  List<User> get selectedMembers;
  @override
  List<User> get searchedUsers;
  @override
  bool get isSearching;
  @override
  Conversation? get createdConversation;
  @override
  bool get isCreatingConversation;
  @override
  @JsonKey(ignore: true)
  _$$CreateConversationStateImplCopyWith<_$CreateConversationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
