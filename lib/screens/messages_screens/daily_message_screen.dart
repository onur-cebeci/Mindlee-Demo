import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mindlee_demo/routers/app_router.dart';
import 'package:mindlee_demo/utils/constant.dart';
import 'package:mindlee_demo/utils/custom_theme_data.dart';
import 'package:mindlee_demo/utils/extensions.dart';
import 'package:mindlee_demo/utils/fonts.dart';
import 'package:mindlee_demo/widgets/custom_button.dart';
import 'package:mindlee_demo/widgets/daily_message_app_bar.dart';
import 'package:mindlee_demo/widgets/message_card.dart';
import 'package:mindlee_demo/widgets/pop_up_menu.dart';

@RoutePage()
class DailyMessageScreen extends ConsumerWidget {
  const DailyMessageScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  'https://img.lovepik.com/background/20211029/medium/lovepik-gorgeous-background-mobile-wallpaper-image_400268958.jpg',
                ),
                fit: BoxFit.fill)),
        width: size.width,
        height: size.height,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DailyMessageAppBar(),
                SizedBox(height: AppConstant.padding20),
                MessageCard(),
              ],
            ),
            MessageBottomBottons()
          ],
        ),
      ),
    );
  }
}

class MessageBottomBottons extends StatelessWidget {
  const MessageBottomBottons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppConstant.padding10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButtonWidget(
            text: 'luck_number_of_the_day',
            onTap: () {},
          ),
          const SizedBox(width: AppConstant.padding20),
          Container(
            padding: const EdgeInsets.all(AppConstant.paddingButton),
            decoration: BoxDecoration(
              color: CustomThemeData.whiteColor,
              borderRadius: BorderRadius.circular(60),
            ),
            child: const Icon(
              Icons.edit_square,
            ),
          )
        ],
      ),
    );
  }
}
