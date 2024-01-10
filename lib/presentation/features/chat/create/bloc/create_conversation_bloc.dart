import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/helpers/helpers.dart';
import '../../../../../domain/domain.dart';
import '../../../../base/bloc/base_bloc.dart';

part 'create_conversation_bloc.freezed.dart';
part 'create_conversation_event.dart';
part 'create_conversation_state.dart';

@injectable
class CreateConversationBloc extends BaseBloc<CreateConversationEvent, CreateConversationState> {
  CreateConversationBloc(
    this._userRepository,
    this._chatRepository,
  ) : super(CreateConversationState()) {
    on<SearchUser>(_onSearchUser);
    on<UpdateSearchedUsers>(_onUpdateSearchedUsers);
    on<AddUsers>(_onAddUser);
    on<RemoveUser>(_onRemoveUser);
    on<UpdateGroupName>(_onUpdateGroupName);
    on<CreateConversation>(_onCreateConversation);
  }

  final UserRepository _userRepository;
  final ChatRepository _chatRepository;

  final searchUserDebouncer = Debouncer(delay: AppDurationConstants.delaySearchUser);

  Future<void> _onSearchUser(SearchUser event, Emitter<CreateConversationState> emit) async {
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

  void _onUpdateSearchedUsers(UpdateSearchedUsers event, Emitter<CreateConversationState> emit) {
    emit(state.copyWith(searchedUsers: event.users, isSearching: false));
  }

  void _onAddUser(AddUsers event, Emitter<CreateConversationState> emit) {
    final filteredUsers = event.users.where((user) => !state.selectedMembers.contains(user)).toList();

    emit(state.copyWith(selectedMembers: [...state.selectedMembers, ...filteredUsers]));
  }

  void _onRemoveUser(RemoveUser event, Emitter<CreateConversationState> emit) {
    final newUsers = List<User>.from(state.selectedMembers)..remove(event.user);

    emit(state.copyWith(selectedMembers: newUsers));
  }

  void _onUpdateGroupName(UpdateGroupName event, Emitter<CreateConversationState> emit) {
    emit(state.copyWith(chatName: event.chatName));
  }

  Future<void> _onCreateConversation(CreateConversation event, Emitter<CreateConversationState> emit) async {
    emit(state.copyWith(isCreatingConversation: true));

    return runBlocCatching(
      action: () async {
        if (!state.isCreateGroupConversation) {
          // check existing DM conversation
          final existingConversation = await _chatRepository.getConversationByContact(
            currentUserContactId: currentUser.contactID!,
            contactId: state.selectedMembers.first.contactID!,
          );

          if (existingConversation != null) {
            return emit(state.copyWith(createdConversation: existingConversation));
          }
        }

        // create new conversation
        Conversation createdConversation;

        if (state.isCreateGroupConversation) {
          createdConversation = await _chatRepository.createGroupConversation(
            currentUserContactId: currentUser.contactID!,
            name: state.chatName,
          );
        } else {
          createdConversation =
              await _chatRepository.createPrivateConversation(currentUserContactId: currentUser.contactID!);
          createdConversation = createdConversation.copyWith(
            topic: state.selectedMembers.first.fullName,
            imageUrl: state.selectedMembers.first.profilePhoto ?? '',
          );
        }

        for (final member in state.selectedMembers) {
          await _chatRepository.addMemberToConversation(
            conversationId: createdConversation.discussionId,
            memberContactId: member.contactID!,
            currentUserContactId: currentUser.contactID!,
          );
        }

        emit(state.copyWith(createdConversation: createdConversation));
      },
      doOnSuccessOrError: () async => emit(state.copyWith(isCreatingConversation: false)),
    );
  }

  @override
  Future<void> close() {
    searchUserDebouncer.cancel();

    return super.close();
  }
}
