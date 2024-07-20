import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mindlee_demo/controllers/riverpod_menagement.dart';
import 'package:mindlee_demo/utils/constant.dart';
import 'package:mindlee_demo/utils/custom_theme_data.dart';
import 'package:mindlee_demo/utils/translations/locale_keys.g.dart';
import 'package:mindlee_demo/widgets/custom_button.dart';
import 'package:mindlee_demo/widgets/daily_message_app_bar.dart';
import 'package:mindlee_demo/widgets/message_card.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

@RoutePage()
class DailyMessageScreen extends ConsumerWidget {
  const DailyMessageScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var read = ref.read(dailyMessageController);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  AppConstant.dailyPictureUrl,
                ),
                fit: BoxFit.fill)),
        child: Column(
          children: [
            const DailyMessageAppBar(),
            const SizedBox(height: AppConstant.padding20),
            Expanded(
              child: PageView.builder(
                scrollDirection: Axis.vertical,
                itemCount: read.dailyMessagesList.length,
                itemBuilder: (context, i) {
                  var index = read.dailyMessagesList[i];

                  return MessageCard(model: index);
                },
              ),
            ),
            const MessageBottomBottons()
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
    return SizedBox(
      height: AppConstant.padding10.h,
      child: Padding(
        padding: const EdgeInsets.only(bottom: AppConstant.padding10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButtonWidget(
              text: LocaleKeys.luck_number_of_the_day,
              onTap: () {},
            ),
            const SizedBox(width: AppConstant.padding20),
            Container(
              padding: const EdgeInsets.all(AppConstant.paddingButton),
              decoration: BoxDecoration(
                color: CustomThemeData.whiteColor,
                borderRadius: BorderRadius.circular(60.w),
              ),
              child: const Icon(
                Icons.edit_square,
              ),
            )
          ],
        ),
      ),
    );
  }
}
