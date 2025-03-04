import 'package:flutter/material.dart';

import 'custom_theme_data.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: CircularProgressIndicator(
        color: CustomThemeData.blueColorDark,
      )),
    );
  }
}
