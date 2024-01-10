part of 'calendar_bloc.dart';

@freezed
class CalendarState extends BaseState with _$CalendarState {
  const CalendarState._();

  const factory CalendarState({
    required List<Event> events,
    @Default(false) bool isLoading,
  }) = _CalendarState;

  factory CalendarState.initial() => const CalendarState(events: []);
}
