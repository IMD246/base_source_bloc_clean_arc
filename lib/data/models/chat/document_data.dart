import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/entities.dart';
import '../base/entity_mappable.dart';
import '../helper/avnon_datasource_helper.dart';

part 'document_data.freezed.dart';
part 'document_data.g.dart';

@freezed
class DocumentData with _$DocumentData implements EntityMappable<Document> {
  const DocumentData._();

  const factory DocumentData({
    required int documentID,
    required int documentCategoryID,
    required int referenceID,
    required int reference2ID,
    required int documentUploadedByID,
    required String documentType,
    required String documentTitle,
    required int contactID,
    required int companyID,
    String? documentPath,
    String? thumbnailDocumentPath,
    String? documentDescription,
    String? documentSize,
    String? dateUploaded,
    int? documentFolderID,
    String? hlsLink,
    String? dashLink,
    String? ampLink,
    bool? isStream,
    int? thumbnailDocumentID,
    int? streamProcessing,
    String? streamTrailerPath,
    String? streamThumbnail,
    int? parentDocumentID,
    String? expiryDate,
    int? documentFolderID1,
    String? documentFolder,
    String? thumbnailImage,
    String? sharedBy,
    int? totalShares,
    String? documentReference,
    String? uploadedBy,
    int? permissionTypeID,
    int? permissionLevelID,
    int? permissionID,
    String? companyName,
    String? contactName,
    int? contactID1,
    String? expiryDate1,
    int? viewCount,
    int? downloadCount,
    int? likeCount,
    int? likeID,
    int? documentSubCategoryID1,
  }) = _DocumentData;

  factory DocumentData.fromJson(Map<String, dynamic> json) => _$DocumentDataFromJson(json);

  @override
  Document toEntity() {
    return Document(
      id: documentID,
      name: documentTitle,
      url: documentPath != null ? AvnonDataSourceHelper.addBlobStoragePrefix(documentPath!) : '',
      type: _parseMediaType(documentType),
      size: documentSize != null ? int.parse(documentSize!) : null,
    );
  }

  DocumentType _parseMediaType(String documentType) {
    if (documentType.contains('image')) {
      return DocumentType.image;
    } else if (documentType.contains('video')) {
      return DocumentType.video;
    } else {
      return DocumentType.other;
    }
  }
}
