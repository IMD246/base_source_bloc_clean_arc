// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_participants_bloc.dart';

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
mixin _$AddUser {
  User get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddUserCopyWith<AddUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUserCopyWith<$Res> {
  factory $AddUserCopyWith(AddUser value, $Res Function(AddUser) then) =
      _$AddUserCopyWithImpl<$Res, AddUser>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$AddUserCopyWithImpl<$Res, $Val extends AddUser>
    implements $AddUserCopyWith<$Res> {
  _$AddUserCopyWithImpl(this._value, this._then);

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
abstract class _$$AddUserImplCopyWith<$Res> implements $AddUserCopyWith<$Res> {
  factory _$$AddUserImplCopyWith(
          _$AddUserImpl value, $Res Function(_$AddUserImpl) then) =
      __$$AddUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AddUserImplCopyWithImpl<$Res>
    extends _$AddUserCopyWithImpl<$Res, _$AddUserImpl>
    implements _$$AddUserImplCopyWith<$Res> {
  __$$AddUserImplCopyWithImpl(
      _$AddUserImpl _value, $Res Function(_$AddUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AddUserImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$AddUserImpl implements _AddUser {
  const _$AddUserImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AddUser(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddUserImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddUserImplCopyWith<_$AddUserImpl> get copyWith =>
      __$$AddUserImplCopyWithImpl<_$AddUserImpl>(this, _$identity);
}

abstract class _AddUser implements AddUser {
  const factory _AddUser(final User user) = _$AddUserImpl;

  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$AddUserImplCopyWith<_$AddUserImpl> get copyWith =>
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
mixin _$SelectParticipantsState {
  String get query => throw _privateConstructorUsedError;
  List<User> get selectedMembers => throw _privateConstructorUsedError;
  List<User> get searchedUsers => throw _privateConstructorUsedError;
  bool get isSearching => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectParticipantsStateCopyWith<SelectParticipantsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectParticipantsStateCopyWith<$Res> {
  factory $SelectParticipantsStateCopyWith(SelectParticipantsState value,
          $Res Function(SelectParticipantsState) then) =
      _$SelectParticipantsStateCopyWithImpl<$Res, SelectParticipantsState>;
  @useResult
  $Res call(
      {String query,
      List<User> selectedMembers,
      List<User> searchedUsers,
      bool isSearching});
}

/// @nodoc
class _$SelectParticipantsStateCopyWithImpl<$Res,
        $Val extends SelectParticipantsState>
    implements $SelectParticipantsStateCopyWith<$Res> {
  _$SelectParticipantsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? selectedMembers = null,
    Object? searchedUsers = null,
    Object? isSearching = null,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectParticipantsStateImplCopyWith<$Res>
    implements $SelectParticipantsStateCopyWith<$Res> {
  factory _$$SelectParticipantsStateImplCopyWith(
          _$SelectParticipantsStateImpl value,
          $Res Function(_$SelectParticipantsStateImpl) then) =
      __$$SelectParticipantsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String query,
      List<User> selectedMembers,
      List<User> searchedUsers,
      bool isSearching});
}

/// @nodoc
class __$$SelectParticipantsStateImplCopyWithImpl<$Res>
    extends _$SelectParticipantsStateCopyWithImpl<$Res,
        _$SelectParticipantsStateImpl>
    implements _$$SelectParticipantsStateImplCopyWith<$Res> {
  __$$SelectParticipantsStateImplCopyWithImpl(
      _$SelectParticipantsStateImpl _value,
      $Res Function(_$SelectParticipantsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? selectedMembers = null,
    Object? searchedUsers = null,
    Object? isSearching = null,
  }) {
    return _then(_$SelectParticipantsStateImpl(
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
    ));
  }
}

/// @nodoc

class _$SelectParticipantsStateImpl implements _SelectParticipantsState {
  const _$SelectParticipantsStateImpl(
      {this.query = '',
      final List<User> selectedMembers = const <User>[],
      final List<User> searchedUsers = const <User>[],
      this.isSearching = false})
      : _selectedMembers = selectedMembers,
        _searchedUsers = searchedUsers;

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
  String toString() {
    return 'SelectParticipantsState(query: $query, selectedMembers: $selectedMembers, searchedUsers: $searchedUsers, isSearching: $isSearching)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectParticipantsStateImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality()
                .equals(other._selectedMembers, _selectedMembers) &&
            const DeepCollectionEquality()
                .equals(other._searchedUsers, _searchedUsers) &&
            (identical(other.isSearching, isSearching) ||
                other.isSearching == isSearching));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      query,
      const DeepCollectionEquality().hash(_selectedMembers),
      const DeepCollectionEquality().hash(_searchedUsers),
      isSearching);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectParticipantsStateImplCopyWith<_$SelectParticipantsStateImpl>
      get copyWith => __$$SelectParticipantsStateImplCopyWithImpl<
          _$SelectParticipantsStateImpl>(this, _$identity);
}

abstract class _SelectParticipantsState implements SelectParticipantsState {
  const factory _SelectParticipantsState(
      {final String query,
      final List<User> selectedMembers,
      final List<User> searchedUsers,
      final bool isSearching}) = _$SelectParticipantsStateImpl;

  @override
  String get query;
  @override
  List<User> get selectedMembers;
  @override
  List<User> get searchedUsers;
  @override
  bool get isSearching;
  @override
  @JsonKey(ignore: true)
  _$$SelectParticipantsStateImplCopyWith<_$SelectParticipantsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
