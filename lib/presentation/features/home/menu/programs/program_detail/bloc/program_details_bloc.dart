import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../../domain/domain.dart';
import '../../../../../../base/bloc/base_bloc.dart';

part 'program_details_bloc.freezed.dart';
part 'program_details_event.dart';
part 'program_details_state.dart';

@injectable
class ProgramDetailsBloc extends BaseBloc<ProgramDetailsEvent, ProgramDetailsState> {
  ProgramDetailsBloc(this._repository) : super(const ProgramDetailsState()) {
    on<ProgramDetailsInitial>(_onInitial);
  }

  final ProgramsRepository _repository;

  FutureOr<void> _onInitial(ProgramDetailsInitial event, Emitter<ProgramDetailsState> emit) {
    emit(state.copyWith(program: event.program, isLoading: true));

    return runBlocCatching(
      action: () async {
        final program = await _repository.getProgramInstanceProfile(programInstanceID: event.program.instanceId);

        emit(state.copyWith(program: program, isLoading: false));
      },
      doOnError: (e) async => emit(state.copyWith(isLoading: false)),
    );
  }
}
