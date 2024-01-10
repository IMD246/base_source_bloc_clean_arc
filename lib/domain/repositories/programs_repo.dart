import '../entities/program.dart';

abstract class ProgramsRepository {
  Future<List<Program>> getPrograms({required int currentUserContactId});

  Future<Program> getProgramInstanceProfile({required int programInstanceID});
}
