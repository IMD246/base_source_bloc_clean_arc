part of 'program_details_bloc.dart';

@freezed
class ProgramDetailsState extends BaseState with _$ProgramDetailsState {
  const factory ProgramDetailsState({
    Program? program,
    @Default(false) bool isLoading,
  }) = _ProgramDetailsState;
}
