part of 'calendar_bloc.dart';

class CalendarEvent extends BaseEvent {}

@freezed
class CalendarInitiated extends CalendarEvent {
  const factory CalendarInitiated() = _CalendarInitiated;
}

@freezed
class GetEvents extends CalendarEvent with _$GetEvents {
  const factory GetEvents({required bool isRefresh}) = _GetEvents;
}
