part of 'programs_bloc.dart';

class ProgramsEvent extends BaseEvent {}

@freezed
class ProgramsInitial extends ProgramsEvent with _$ProgramsInitial {
  const factory ProgramsInitial() = _ProgramsInitial;
}

@freezed
class ProgramsSearch extends ProgramsEvent with _$ProgramsSearch {
  const factory ProgramsSearch(String query) = _ProgramsSearch;
}
