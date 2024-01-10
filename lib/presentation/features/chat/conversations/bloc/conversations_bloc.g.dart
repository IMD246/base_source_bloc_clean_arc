// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversations_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationsStateImpl _$$ConversationsStateImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversationsStateImpl(
      conversations: (json['conversations'] as List<dynamic>)
          .map((e) => Conversation.fromJson(e as Map<String, dynamic>))
          .toList(),
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$ConversationsStateImplToJson(
        _$ConversationsStateImpl instance) =>
    <String, dynamic>{
      'conversations': instance.conversations,
      'isLoading': instance.isLoading,
    };
