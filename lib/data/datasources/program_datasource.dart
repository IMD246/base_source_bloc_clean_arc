import 'package:injectable/injectable.dart';

import '../models/program_data.dart';
import 'gateway/api/api.dart';

@injectable
class ProgramsDataSource {
  ProgramsDataSource(this._apiClient);

  final AuthenticatedRestApiClient _apiClient;

  Future<List<ProgramData>> getPrograms(int currentUserContactId) {
    final query = {
      'contactID': currentUserContactId,
      'companyID': 0,
    };

    return _apiClient.get(
      '/company/program/instance/open',
      queryParameters: query,
      successResponseMapperType: SuccessResponseMapperType.jsonArray,
      decoder: ProgramData.fromJson,
    );
  }

  Future<ProgramData> getProgramInstanceProfile(int programInstanceID) {
    return _apiClient.get(
      '/company/program/instance/$programInstanceID',
      decoder: ProgramData.fromJson,
    );
  }
}
