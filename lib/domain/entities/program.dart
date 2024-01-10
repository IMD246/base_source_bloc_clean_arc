import 'package:freezed_annotation/freezed_annotation.dart';

import 'company.dart';

part 'program.freezed.dart';

@freezed
class Program with _$Program {
  const factory Program({
    required int id,
    required int instanceId,
    required String title,
    required String overview,
    required String banner,
    required Company company,
    String? profileDesc,
    String? entryRequirements,
    String? targetAudience,
    int? programCost,
    Duration? duration,
    int? courseId,
    int? courseTitle,
  }) = _Program;
}
