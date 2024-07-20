// ignore_for_file: unused_result

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mindlee_demo/models/daily_message_models/daily_message_model.dart';
import 'package:mindlee_demo/services/daily_message_services/daily_message_service.dart';

enum DailyMessagesServiceStatus {
  loading,
  initial,
  notFound,
  error,
  completed,
  success
}

class DailyMessageScreenController extends ChangeNotifier {
//
  DailyMessageService service = DailyMessageService();
  List<DailyMessageModel> dailyMessageList = [];

  DailyMessagesServiceStatus status = DailyMessagesServiceStatus.initial;

  final List<DailyMessageModel> dailyMessagesList = const [
    DailyMessageModel(
        id: "1",
        userName: "Onur",
        dailyMessage:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using making it look like readable English. Many desktop publishing packages and web-It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using making it look like readable English. Many desktop publishing packages and web  - It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using making it look like readable English. Many desktop publishing packages and web-It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using making it look like readable English. Many desktop publishing packages and web",
        date: "28.01.2024",
        isLike: false),
    DailyMessageModel(
        id: "2",
        userName: "Onur",
        dailyMessage:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using making it look like readable English. Many desktop publishing packages and web The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using making it look like readable English. Many desktop publishing packages and web Many desktop publishing packages and web ",
        date: "28.01.2024",
        isLike: false),
    DailyMessageModel(
        id: "3",
        userName: "Onur",
        dailyMessage:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using making it look like readable English. Many desktop publishing packages and web ",
        date: "28.01.2024",
        isLike: false),
    DailyMessageModel(
        id: "4",
        userName: "Onur",
        dailyMessage:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using making it look like readable English. Many desktop publishing packages and web ",
        date: "28.01.2024",
        isLike: false),
    DailyMessageModel(
        id: "5",
        userName: "Onur",
        dailyMessage:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using making it look like readable English. Many desktop publishing packages and web ",
        date: "28.01.2024",
        isLike: false),
  ];

  List<String> likedList = [];

  Size textSize = const Size(0, 0);

  void getTextSize({required String text}) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(
        text: text,
      ),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout(minWidth: 0, maxWidth: double.infinity);

    textSize = textPainter.size;
  }

  void setLikedList({required List<String> list}) {
    likedList = list;
    notifyListeners();
  }

  void isLiked({required String id}) {
    if (likedList.contains(id)) {
      likedList.remove(id);
    } else {
      likedList.add(id);
    }
    notifyListeners();
  }

  //
  void setDailyMessage({required List<DailyMessageModel> list}) {
    dailyMessageList = list;
  }

  Future<void> fetchDailyMessages() async {
    status = DailyMessagesServiceStatus.loading;

    final list = await service.fetchDailyMessages();
    setDailyMessage(list: list);
    status = DailyMessagesServiceStatus.completed;
    notifyListeners();
  }
}
