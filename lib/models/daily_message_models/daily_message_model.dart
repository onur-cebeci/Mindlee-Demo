import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_message_model.freezed.dart';
part 'daily_message_model.g.dart';

@freezed
class DailyMessageModel with _$DailyMessageModel {
  const factory DailyMessageModel(
      {required String id,
      required String userName,
      required String dailyMessage,
      required String date,
      @Default(false) bool isLike}) = _DailyMessageModel;

  factory DailyMessageModel.fromJson(Map<String, dynamic> json) =>
      _$DailyMessageModelFromJson(json);
}
