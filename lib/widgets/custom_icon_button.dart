import 'package:flutter/material.dart';
import 'package:mindlee_demo/utils/constant.dart';
import 'package:mindlee_demo/utils/custom_theme_data.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.onTap,
    required this.icon,
  });
  final void Function()? onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: const EdgeInsets.all(AppConstant.padding5),
          decoration: BoxDecoration(
              color: CustomThemeData.whiteColor,
              borderRadius: BorderRadius.circular(60)),
          child: Icon(icon)),
    );
  }
}
