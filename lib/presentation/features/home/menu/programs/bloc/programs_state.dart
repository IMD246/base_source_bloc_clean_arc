part of 'programs_bloc.dart';

@freezed
class ProgramsState extends BaseState with _$ProgramsState {
  const ProgramsState._();

  const factory ProgramsState({
    @Default(false) bool isLoading,
    @Default([]) List<Program> programs,
    @Default('') String query,
    @Default([]) List<Program> filteredPrograms,
  }) = _ProgramsState;

  ProgramsState addPrograms(List<Program> programs) {
    return copyWith(programs: programs, filteredPrograms: programs, isLoading: false, query: '');
  }
}
