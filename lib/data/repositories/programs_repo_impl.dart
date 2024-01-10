import 'package:injectable/injectable.dart';

import '../../domain/domain.dart';
import '../datasources/program_datasource.dart';

@Injectable(as: ProgramsRepository)
class ProgramsRepositoryImpl implements ProgramsRepository {
  ProgramsRepositoryImpl(this._programsDataSource);

  final ProgramsDataSource _programsDataSource;

  @override
  Future<List<Program>> getPrograms({required int currentUserContactId}) async {
    final programsData = await _programsDataSource.getPrograms(currentUserContactId);

    return programsData.map((program) => program.toEntity()).toList();
  }

  @override
  Future<Program> getProgramInstanceProfile({required int programInstanceID}) async {
    final programData = await _programsDataSource.getProgramInstanceProfile(programInstanceID);

    return programData.toEntity();
  }
}
