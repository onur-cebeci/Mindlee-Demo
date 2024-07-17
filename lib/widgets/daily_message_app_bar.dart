import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mindlee_demo/utils/constant.dart';
import 'package:mindlee_demo/utils/fonts.dart';
import 'package:mindlee_demo/widgets/custom_icon_button.dart';
import 'package:mindlee_demo/widgets/pop_up_menu.dart';

class DailyMessageAppBar extends StatelessWidget {
  const DailyMessageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          top: AppConstant.padding40,
          left: AppConstant.padding25,
          right: AppConstant.padding25,
          bottom: AppConstant.padding15),
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: Colors.white.withOpacity(0.2)))),
      child: Row(
        children: [
          CustomIconButton(
            onTap: () {
              context.router.popForced();
            },
            icon: Icons.keyboard_arrow_left_outlined,
          ),
          const Spacer(),
          const Text(
            'daily_message_text',
            style: customFont16Secondary,
          ).tr(),
          const Spacer(),
          CustomIconButton(
            onTap: () {
              popUpMenu(context);
            },
            icon: Icons.more_vert,
          ),
        ],
      ),
    );
  }
}
