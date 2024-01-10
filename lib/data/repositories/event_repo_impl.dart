import 'dart:developer';

import 'package:injectable/injectable.dart';

import '../../core/configs/configs.dart';
import '../../core/utils/log_utils.dart';
import '../../domain/entities/event.dart';
import '../../domain/repositories/event_repo.dart';
import '../datasources/event_datasource.dart';

@LazySingleton(as: EventRepository)
class EventRepositoryImpl implements EventRepository {
  EventRepositoryImpl(this._eventDataSource);

  final EventDataSource _eventDataSource;

  @override
  Future<List<Event>> getEventDataMaster({
    required int masterCompanyId,
    required int companyId,
    required int contactId,
    required String startDate,
    required String endDate,
    required int eventCategoryID,
    required int programInstanceID,
    required int eventID,
    required int userContactID,
    required int subReferenceID,
    String? search,
  }) async {
    final events = await _eventDataSource.getEventDataMaster(
      masterCompanyId: masterCompanyId,
      companyId: companyId,
      contactId: contactId,
      startDate: startDate,
      endDate: endDate,
      eventCategoryID: eventCategoryID,
      programInstanceID: programInstanceID,
      eventID: eventID,
      userContactID: userContactID,
      subReferenceID: subReferenceID,
      search: search,
    );

    log(events.length.toString());

    return events.map((e) => e.toEntity()).toList();
  }
}
