import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mindlee_demo/controllers/daily_message_screen_controllers/daily_message_screen_controller.dart';

final dailyMessageController =
    ChangeNotifierProvider((_) => DailyMessageScreenController());
