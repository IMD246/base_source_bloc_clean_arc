import '../entities/event.dart';

abstract class EventRepository {
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
  });
}
