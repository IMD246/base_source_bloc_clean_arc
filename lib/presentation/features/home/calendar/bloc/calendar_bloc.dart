import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/extensions/date_time_extensions.dart';
import '../../../../../domain/entities/event.dart';
import '../../../../../domain/repositories/event_repo.dart';
import '../../../../base/bloc/base_bloc.dart';
part 'calendar_state.dart';
part 'calendar_event.dart';
part 'calendar_bloc.freezed.dart';

@injectable
class CalendarBloc extends BaseBloc<CalendarEvent, CalendarState> {
  CalendarBloc(this._eventRepository) : super(CalendarState.initial()) {
    on<CalendarInitiated>(_onInitialEvent);
  }

  final EventRepository _eventRepository;

  Future<FutureOr<void>> _onInitialEvent(
    CalendarInitiated event,
    Emitter<CalendarState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, events: []));
    final events = await _getEvents();

    emit(state.copyWith(isLoading: false, events: events));
  }

  Future<List<Event>> _getEvents() async {
    try {
      return await _eventRepository.getEventDataMaster(
        masterCompanyId: 3558,
        companyId: currentUser.companyID ?? 0,
        contactId: currentUser.contactID ?? -1,
        startDate: DateTime(2024).toStringWithFormat('yyyy-MM-dd HH:mm:ss'),
        endDate: DateTime.now().toStringWithFormat('yyyy-MM-dd HH:mm:ss'),
        eventCategoryID: 0,
        programInstanceID: 0,
        eventID: 0,
        userContactID: currentUser.contactID ?? -1,
        subReferenceID: 0,
      );
    } catch (e) {
      logError(e.toString());

      return [];
    }
  }
}
