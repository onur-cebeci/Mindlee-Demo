import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:mindlee_demo/utils/constant.dart';
import 'package:mindlee_demo/utils/custom_theme_data.dart';
import 'package:mindlee_demo/utils/fonts.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size.width / 1.5,
        padding:
            const EdgeInsets.symmetric(vertical: AppConstant.paddingButton),
        decoration: BoxDecoration(
            color: CustomThemeData.whiteColor,
            borderRadius: BorderRadius.circular(AppConstant.padding25)),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: CustomFonts.customFont16,
        ).tr(),
      ),
    );
  }
}
