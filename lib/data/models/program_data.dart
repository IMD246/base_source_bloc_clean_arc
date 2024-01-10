import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/entities.dart';
import 'base/entity_mappable.dart';
import 'helper/avnon_datasource_helper.dart';

part 'program_data.freezed.dart';
part 'program_data.g.dart';

@freezed
class ProgramData with _$ProgramData, EntityMappable<Program> {
  const ProgramData._();

  const factory ProgramData({
    String? companyName,
    int? programInstanceID,
    int? programID,
    String? programInstanceTitle,
    int? programInstanceManagerContactID,
    String? programInstanceStartDate,
    String? programInstanceEndDate,
    bool? rollingIntake,
    bool? autoVerify,
    String? programInstanceOverview,
    String? programInstanceProfile,
    String? programInstanceAudience,
    String? programInstanceEntryRequirements,
    bool? publicList,
    int? parentProgramInstanceID,
    String? programTerms,
    int? programInstanceStatusID,
    String? programInstanceLogoTemp,
    int? programID1,
    int? companyID,
    String? programTitle,
    String? programOverview,
    String? programProfile,
    String? entryRequirements,
    String? targetAudience,
    int? programCost,
    int? durationTypeID,
    double? duration,
    int? courseID,
    int? programTypeID,
    int? programFormatID,
    String? programStructure,
    int? programSectionID,
    int? programBuildStatusID,
    int? programInstanceStageID,
    int? programInstanceID1,
    String? programStageTitle,
    int? programStageTypeID,
    String? programStageStartDate,
    String? programStageEndDate,
    int? programStageOrderID,
    String? programStageOverview,
    int? programStageMaxDurationTypeID,
    // num? programStageMaxDuration,
    int? activationStatusID,
    String? activationStatusDate,
    int? activatedByContactID,
    int? programInstanceStageOrder,
    String? programInstanceStageDetail,
    String? bannerImage,
    String? companyLogo,
    int? companyProgramInstanceID,
    String? programInstanceStatus,
    int? programInstanceStatusID1,
    int? likeID,
  }) = _ProgramData;

  factory ProgramData.fromJson(Map<String, dynamic> json) => _$ProgramDataFromJson(json);

  @override
  Program toEntity() {
    return Program(
      id: programID!,
      instanceId: programInstanceID!,
      title: programTitle!,
      overview: programOverview ?? '',
      banner: bannerImage != null ? AvnonDataSourceHelper.addBlobStoragePrefix(bannerImage!) : '',
      profileDesc: programProfile,
      entryRequirements: entryRequirements,
      targetAudience: targetAudience,
      company: Company(
        id: companyID!,
        name: companyName!,
        logo: companyLogo != null ? AvnonDataSourceHelper.addBlobStoragePrefix(companyLogo!) : '',
      ),
      programCost: programCost,
      courseId: courseID,
      courseTitle: courseID,
    );
  }
}
