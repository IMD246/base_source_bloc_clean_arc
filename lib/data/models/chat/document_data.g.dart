// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentDataImpl _$$DocumentDataImplFromJson(Map<String, dynamic> json) =>
    _$DocumentDataImpl(
      documentID: json['documentID'] as int,
      documentCategoryID: json['documentCategoryID'] as int,
      referenceID: json['referenceID'] as int,
      reference2ID: json['reference2ID'] as int,
      documentUploadedByID: json['documentUploadedByID'] as int,
      documentType: json['documentType'] as String,
      documentTitle: json['documentTitle'] as String,
      contactID: json['contactID'] as int,
      companyID: json['companyID'] as int,
      documentPath: json['documentPath'] as String?,
      thumbnailDocumentPath: json['thumbnailDocumentPath'] as String?,
      documentDescription: json['documentDescription'] as String?,
      documentSize: json['documentSize'] as String?,
      dateUploaded: json['dateUploaded'] as String?,
      documentFolderID: json['documentFolderID'] as int?,
      hlsLink: json['hlsLink'] as String?,
      dashLink: json['dashLink'] as String?,
      ampLink: json['ampLink'] as String?,
      isStream: json['isStream'] as bool?,
      thumbnailDocumentID: json['thumbnailDocumentID'] as int?,
      streamProcessing: json['streamProcessing'] as int?,
      streamTrailerPath: json['streamTrailerPath'] as String?,
      streamThumbnail: json['streamThumbnail'] as String?,
      parentDocumentID: json['parentDocumentID'] as int?,
      expiryDate: json['expiryDate'] as String?,
      documentFolderID1: json['documentFolderID1'] as int?,
      documentFolder: json['documentFolder'] as String?,
      thumbnailImage: json['thumbnailImage'] as String?,
      sharedBy: json['sharedBy'] as String?,
      totalShares: json['totalShares'] as int?,
      documentReference: json['documentReference'] as String?,
      uploadedBy: json['uploadedBy'] as String?,
      permissionTypeID: json['permissionTypeID'] as int?,
      permissionLevelID: json['permissionLevelID'] as int?,
      permissionID: json['permissionID'] as int?,
      companyName: json['companyName'] as String?,
      contactName: json['contactName'] as String?,
      contactID1: json['contactID1'] as int?,
      expiryDate1: json['expiryDate1'] as String?,
      viewCount: json['viewCount'] as int?,
      downloadCount: json['downloadCount'] as int?,
      likeCount: json['likeCount'] as int?,
      likeID: json['likeID'] as int?,
      documentSubCategoryID1: json['documentSubCategoryID1'] as int?,
    );

Map<String, dynamic> _$$DocumentDataImplToJson(_$DocumentDataImpl instance) =>
    <String, dynamic>{
      'documentID': instance.documentID,
      'documentCategoryID': instance.documentCategoryID,
      'referenceID': instance.referenceID,
      'reference2ID': instance.reference2ID,
      'documentUploadedByID': instance.documentUploadedByID,
      'documentType': instance.documentType,
      'documentTitle': instance.documentTitle,
      'contactID': instance.contactID,
      'companyID': instance.companyID,
      'documentPath': instance.documentPath,
      'thumbnailDocumentPath': instance.thumbnailDocumentPath,
      'documentDescription': instance.documentDescription,
      'documentSize': instance.documentSize,
      'dateUploaded': instance.dateUploaded,
      'documentFolderID': instance.documentFolderID,
      'hlsLink': instance.hlsLink,
      'dashLink': instance.dashLink,
      'ampLink': instance.ampLink,
      'isStream': instance.isStream,
      'thumbnailDocumentID': instance.thumbnailDocumentID,
      'streamProcessing': instance.streamProcessing,
      'streamTrailerPath': instance.streamTrailerPath,
      'streamThumbnail': instance.streamThumbnail,
      'parentDocumentID': instance.parentDocumentID,
      'expiryDate': instance.expiryDate,
      'documentFolderID1': instance.documentFolderID1,
      'documentFolder': instance.documentFolder,
      'thumbnailImage': instance.thumbnailImage,
      'sharedBy': instance.sharedBy,
      'totalShares': instance.totalShares,
      'documentReference': instance.documentReference,
      'uploadedBy': instance.uploadedBy,
      'permissionTypeID': instance.permissionTypeID,
      'permissionLevelID': instance.permissionLevelID,
      'permissionID': instance.permissionID,
      'companyName': instance.companyName,
      'contactName': instance.contactName,
      'contactID1': instance.contactID1,
      'expiryDate1': instance.expiryDate1,
      'viewCount': instance.viewCount,
      'downloadCount': instance.downloadCount,
      'likeCount': instance.likeCount,
      'likeID': instance.likeID,
      'documentSubCategoryID1': instance.documentSubCategoryID1,
    };