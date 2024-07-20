import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mindlee_demo/routers/app_router.dart';
import 'package:mindlee_demo/utils/custom_theme_data.dart';
import 'package:mindlee_demo/utils/translations/locale_keys.g.dart';
import 'package:mindlee_demo/widgets/custom_app_bar.dart';
import 'package:mindlee_demo/widgets/custom_button.dart';

@RoutePage()
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: CustomThemeData.primaryColor,
      appBar: const CustomAppBar(),
      body: Center(
        child: CustomButtonWidget(
          text: LocaleKeys.daily_message_text,
          onTap: () {
            context.router.push(const DailyMessageRoute());
          },
        ),
      ),
    );
  }
}
