import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mindlee_demo/utils/constant.dart';
import 'package:mindlee_demo/utils/custom_theme_data.dart';
import 'package:mindlee_demo/utils/fonts.dart';

@RoutePage()
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: CustomThemeData.primaryColor,
      appBar: AppBar(
        title: Text(
          'Mindlee App',
          style: customFont20Bold.copyWith(color: CustomThemeData.primaryColor),
        ),
        centerTitle: true,
        elevation: 1,
        backgroundColor: CustomThemeData.whiteColor,
      ),
      body: const Center(
        child: CustomButtonWidget(),
      ),
    );
  }
}

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 1.6,
      padding: const EdgeInsets.symmetric(vertical: AppConstant.padding15),
      decoration: BoxDecoration(
          color: CustomThemeData.whiteColor,
          borderRadius: BorderRadius.circular(AppConstant.padding25)),
      child: const Text(
        'daily_message_text',
        textAlign: TextAlign.center,
        style: customFont16,
      ).tr(),
    );
  }
}
