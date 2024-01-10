import 'package:injectable/injectable.dart';

import '../../core/extensions/map_extensions.dart';
import '../models/event_data.dart';
import 'gateway/api/api.dart';

@injectable
class EventDataSource {
  EventDataSource(this._authenticatedClient);

  final AuthenticatedRestApiClient _authenticatedClient;

  Future<List<EventData>> getEventDataMaster({
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
    final Map<String, dynamic> queryParameters = {
      'MasterCompanyID': masterCompanyId,
      'CompanyID': companyId,
      'ContactID': contactId,
      'StartDate': startDate,
      'EndDate': endDate,
      'EventCategoryID': eventCategoryID,
      'ProgramInstanceID': programInstanceID,
      'EventID': eventID,
      'UserContactID': userContactID,
      'SubReferenceID': subReferenceID,
    };

    if (search != null) {
      queryParameters['Search'] = search;
    }

    return await _authenticatedClient.get(
      '/Event/master${queryParameters.toPathParam()}',
      decoder: EventData.fromJson,
      successResponseMapperType: SuccessResponseMapperType.jsonArray,
    );
  }
}
