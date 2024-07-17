import 'package:auto_route/auto_route.dart';
import 'package:mindlee_demo/screens/home_screens/home_screen.dart';
import 'package:mindlee_demo/screens/messages_screens/daily_message_screen.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: DailyMessageRoute.page),
      ];
}

final router = AppRouter();
