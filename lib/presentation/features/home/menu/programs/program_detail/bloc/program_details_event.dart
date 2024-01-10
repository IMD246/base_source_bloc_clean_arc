part of 'program_details_bloc.dart';

class ProgramDetailsEvent extends BaseEvent {}

@freezed
class ProgramDetailsInitial extends ProgramDetailsEvent with _$ProgramDetailsInitial {
  const factory ProgramDetailsInitial(Program program) = _ProgramDetailsInitial;
}
