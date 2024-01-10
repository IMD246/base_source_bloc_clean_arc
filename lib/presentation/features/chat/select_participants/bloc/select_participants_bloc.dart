import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/helpers/helpers.dart';
import '../../../../../domain/domain.dart';
import '../../../../base/bloc/base_bloc.dart';

part 'select_participants_event.dart';
part 'select_participants_state.dart';
part 'select_participants_bloc.freezed.dart';

@injectable
class SelectParticipantsBloc extends BaseBloc<SelectParticipantsEvent, SelectParticipantsState> {
  SelectParticipantsBloc(this._userRepository) : super(const SelectParticipantsState()) {
    on<SearchUser>(_onSearchUser);
    on<UpdateSearchedUsers>(_onUpdateSearchedUsers);
    on<AddUser>(_onAddUser);
    on<RemoveUser>(_onRemoveUser);
  }

  final UserRepository _userRepository;

  final searchUserDebouncer = Debouncer(delay: AppDurationConstants.delaySearchUser);

  Future<void> _onSearchUser(SearchUser event, Emitter<SelectParticipantsState> emit) async {
    if (event.query.trim() == state.query) {
      return;
    }

    emit(state.copyWith(query: event.query));

    if (event.query.isEmpty) {
      return emit(state.copyWith(
        searchedUsers: [],
        isSearching: false,
      ));
    }

    emit(state.copyWith(isSearching: true));

    searchUserDebouncer.run(() async {
      await runBlocCatching(
        action: () async {
          final foundUsers = await _userRepository.searchUsers(event.query);

          if (event.query == state.query) {
            add(UpdateSearchedUsers(foundUsers));
          }
        },
      );
    });
  }

  void _onUpdateSearchedUsers(UpdateSearchedUsers event, Emitter<SelectParticipantsState> emit) {
    emit(state.copyWith(searchedUsers: event.users, isSearching: false));
  }

  void _onAddUser(AddUser event, Emitter<SelectParticipantsState> emit) {
    if (state.selectedMembers.contains(event.user)) {
      return;
    }

    emit(state.copyWith(selectedMembers: [...state.selectedMembers, event.user]));
  }

  void _onRemoveUser(RemoveUser event, Emitter<SelectParticipantsState> emit) {
    final newUsers = List<User>.from(state.selectedMembers)..remove(event.user);

    emit(state.copyWith(selectedMembers: newUsers));
  }
}
