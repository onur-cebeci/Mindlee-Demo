// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DailyMessageModel _$DailyMessageModelFromJson(Map<String, dynamic> json) {
  return _DailyMessageModel.fromJson(json);
}

/// @nodoc
mixin _$DailyMessageModel {
  String get id => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get dailyMessage => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  bool get isLike => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyMessageModelCopyWith<DailyMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyMessageModelCopyWith<$Res> {
  factory $DailyMessageModelCopyWith(
          DailyMessageModel value, $Res Function(DailyMessageModel) then) =
      _$DailyMessageModelCopyWithImpl<$Res, DailyMessageModel>;
  @useResult
  $Res call(
      {String id,
      String userName,
      String dailyMessage,
      String date,
      bool isLike});
}

/// @nodoc
class _$DailyMessageModelCopyWithImpl<$Res, $Val extends DailyMessageModel>
    implements $DailyMessageModelCopyWith<$Res> {
  _$DailyMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userName = null,
    Object? dailyMessage = null,
    Object? date = null,
    Object? isLike = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      dailyMessage: null == dailyMessage
          ? _value.dailyMessage
          : dailyMessage // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      isLike: null == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyMessageModelImplCopyWith<$Res>
    implements $DailyMessageModelCopyWith<$Res> {
  factory _$$DailyMessageModelImplCopyWith(_$DailyMessageModelImpl value,
          $Res Function(_$DailyMessageModelImpl) then) =
      __$$DailyMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userName,
      String dailyMessage,
      String date,
      bool isLike});
}

/// @nodoc
class __$$DailyMessageModelImplCopyWithImpl<$Res>
    extends _$DailyMessageModelCopyWithImpl<$Res, _$DailyMessageModelImpl>
    implements _$$DailyMessageModelImplCopyWith<$Res> {
  __$$DailyMessageModelImplCopyWithImpl(_$DailyMessageModelImpl _value,
      $Res Function(_$DailyMessageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userName = null,
    Object? dailyMessage = null,
    Object? date = null,
    Object? isLike = null,
  }) {
    return _then(_$DailyMessageModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      dailyMessage: null == dailyMessage
          ? _value.dailyMessage
          : dailyMessage // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      isLike: null == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyMessageModelImpl implements _DailyMessageModel {
  const _$DailyMessageModelImpl(
      {required this.id,
      required this.userName,
      required this.dailyMessage,
      required this.date,
      this.isLike = false});

  factory _$DailyMessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyMessageModelImplFromJson(json);

  @override
  final String id;
  @override
  final String userName;
  @override
  final String dailyMessage;
  @override
  final String date;
  @override
  @JsonKey()
  final bool isLike;

  @override
  String toString() {
    return 'DailyMessageModel(id: $id, userName: $userName, dailyMessage: $dailyMessage, date: $date, isLike: $isLike)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyMessageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.dailyMessage, dailyMessage) ||
                other.dailyMessage == dailyMessage) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isLike, isLike) || other.isLike == isLike));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userName, dailyMessage, date, isLike);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyMessageModelImplCopyWith<_$DailyMessageModelImpl> get copyWith =>
      __$$DailyMessageModelImplCopyWithImpl<_$DailyMessageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyMessageModelImplToJson(
      this,
    );
  }
}

abstract class _DailyMessageModel implements DailyMessageModel {
  const factory _DailyMessageModel(
      {required final String id,
      required final String userName,
      required final String dailyMessage,
      required final String date,
      final bool isLike}) = _$DailyMessageModelImpl;

  factory _DailyMessageModel.fromJson(Map<String, dynamic> json) =
      _$DailyMessageModelImpl.fromJson;

  @override
  String get id;
  @override
  String get userName;
  @override
  String get dailyMessage;
  @override
  String get date;
  @override
  bool get isLike;
  @override
  @JsonKey(ignore: true)
  _$$DailyMessageModelImplCopyWith<_$DailyMessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
