import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../domain/domain.dart';
import '../../../../../base/bloc/base_bloc.dart';

part 'programs_event.dart';
part 'programs_state.dart';
part 'programs_bloc.freezed.dart';

@injectable
class ProgramsBloc extends BaseBloc<ProgramsEvent, ProgramsState> {
  ProgramsBloc(this._repository) : super(const ProgramsState()) {
    on<ProgramsInitial>(_onInitial);
    on<ProgramsSearch>(_onSearch);
  }

  final ProgramsRepository _repository;

  FutureOr<void> _onInitial(ProgramsInitial event, Emitter<ProgramsState> emit) {
    emit(state.copyWith(isLoading: true));

    return runBlocCatching(
      action: () async {
        final programs = await _repository.getPrograms(currentUserContactId: currentUser.contactID!);

        emit(state.addPrograms(programs));
      },
      doOnError: (e) async => emit(state.copyWith(isLoading: false)),
    );
  }

  FutureOr<void> _onSearch(ProgramsSearch event, Emitter<ProgramsState> emit) {
    emit(state.copyWith(query: event.query));

    if (state.query.isEmpty) {
      emit(state.copyWith(filteredPrograms: state.programs));
    } else {
      final filteredPrograms = state.programs.where((program) {
        return program.title.toLowerCase().contains(state.query.toLowerCase()) ||
            program.overview.toLowerCase().contains(state.query.toLowerCase());
      }).toList();

      emit(state.copyWith(filteredPrograms: filteredPrograms));
    }
  }
}
