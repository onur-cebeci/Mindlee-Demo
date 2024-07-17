import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mindlee_demo/models/daily_message_models/daily_message_model.dart';
import 'package:mindlee_demo/utils/constant.dart';
import 'package:mindlee_demo/utils/custom_theme_data.dart';
import 'package:mindlee_demo/utils/extensions.dart';
import 'package:mindlee_demo/utils/fonts.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({
    super.key,
    required this.model,
  });

  final DailyMessageModel model;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: context.dynamicWidth(0.05)),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(AppConstant.padding10)),
        padding: const EdgeInsets.symmetric(
          vertical: AppConstant.padding20,
          horizontal: AppConstant.padding25,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: size.width / 2,
                    child: Row(
                      children: [
                        const Text('dear', style: customFont18SemiBoldSecondary)
                            .tr(),
                        Text(
                          ' ${model.userName},',
                          style: customFont18SemiBoldSecondary,
                          softWrap: true,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    )),
                Text(
                  model.date,
                  style: customFont12Secondary,
                  softWrap: true,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
            const SizedBox(height: AppConstant.padding20),
            Text(
              model.dailyMessage,
              style: customFont16Secondary,
            ),
            const SizedBox(height: AppConstant.padding20),
            const Row(
              children: [
                Icon(
                  Icons.favorite_border,
                  color: CustomThemeData.whiteColor,
                ),
              ],
            ),
            const SizedBox(height: AppConstant.padding20),
            const Icon(
              Icons.ios_share,
              color: CustomThemeData.whiteColor,
            ),
          ],
        ),
      ),
    );
  }
}
