// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyMessageModelImpl _$$DailyMessageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DailyMessageModelImpl(
      id: json['id'] as String,
      userName: json['userName'] as String,
      dailyMessage: json['dailyMessage'] as String,
      date: json['date'] as String,
      isLike: json['isLike'] as bool? ?? false,
    );

Map<String, dynamic> _$$DailyMessageModelImplToJson(
        _$DailyMessageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'dailyMessage': instance.dailyMessage,
      'date': instance.date,
      'isLike': instance.isLike,
    };
