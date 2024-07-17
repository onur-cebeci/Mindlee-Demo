import 'package:flutter/material.dart';
import 'package:mindlee_demo/models/daily_message_models/daily_message_model.dart';

class DailyMessageScreenController extends ChangeNotifier {
  final List<DailyMessageModel> dailyMessagesList = const [
    DailyMessageModel(
        id: "1",
        userName: "Onur",
        dailyMessage:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using making it look like readable English. Many desktop publishing packages and web-It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using making it look like readable English. Many desktop publishing packages and web ",
        date: "28.01.2024",
        isLike: false),
    DailyMessageModel(
        id: "2",
        userName: "Onur",
        dailyMessage:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using making it look like readable English. Many desktop publishing packages and web ",
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
}
