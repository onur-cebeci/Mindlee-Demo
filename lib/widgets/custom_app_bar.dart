import 'package:flutter/material.dart';
import 'package:mindlee_demo/utils/custom_theme_data.dart';
import 'package:mindlee_demo/utils/fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Mindlee App',
        style: customFont20Bold.copyWith(color: CustomThemeData.primaryColor),
      ),
      centerTitle: true,
      elevation: 1,
      backgroundColor: CustomThemeData.whiteColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
