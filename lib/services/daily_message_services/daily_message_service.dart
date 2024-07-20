// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mindlee_demo/models/daily_message_models/daily_message_model.dart';
import 'package:mindlee_demo/utils/constant.dart';

class DailyMessageService {
  Future<List<DailyMessageModel>> fetchDailyMessages() async {
    List<DailyMessageModel> modelList = [];

    final url = Uri.parse(AppConstant.dailyMessageUrl);
    final requstBody = {};

    try {
      final res = await http.post(url, body: jsonEncode(requstBody));
      final data = jsonDecode(res.body)['messages'];
      if (res.statusCode == AppConstant.success) {
        for (var i = 0; i < data.length; i++) {
          modelList.add(DailyMessageModel.fromJson(jsonDecode(res.body)[i]));
        }
        return modelList;
      } else {
        return modelList;
      }
    } catch (e) {
      print('fetchDailyMessages Error : $e');
    }
    return modelList;
  }
}
