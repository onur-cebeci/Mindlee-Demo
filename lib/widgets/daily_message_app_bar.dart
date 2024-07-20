import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mindlee_demo/utils/constant.dart';
import 'package:mindlee_demo/utils/custom_theme_data.dart';
import 'package:mindlee_demo/utils/fonts.dart';
import 'package:mindlee_demo/widgets/custom_icon_button.dart';
import 'package:mindlee_demo/widgets/pop_up_menu.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DailyMessageAppBar extends StatelessWidget {
  const DailyMessageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConstant.padding15.h,
      padding: const EdgeInsets.only(
          top: AppConstant.padding40,
          left: AppConstant.padding25,
          right: AppConstant.padding25,
          bottom: AppConstant.padding15),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: CustomThemeData.whiteColor.withOpacity(0.2)))),
      child: Row(
        children: [
          CustomIconButton(
            onTap: () {
              context.router.popForced();
            },
            icon: Icons.keyboard_arrow_left_outlined,
          ),
          const Spacer(),
          Text(
            'daily_message_text',
            style: CustomFonts.customFont16SemiBoldSecondary,
          ).tr(),
          const Spacer(),
          CustomIconButton(
            onTap: () {
              PopUpMenu.popUp(context);
            },
            icon: Icons.more_vert,
          ),
        ],
      ),
    );
  }
}
