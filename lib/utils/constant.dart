import 'package:flutter/material.dart';

@immutable
final class AppConstant {
  //URL
  static const dailyMessageUrl = "https://";
  static const dailyPictureUrl =
      'https://img.lovepik.com/background/20211029/medium/lovepik-gorgeous-background-mobile-wallpaper-image_400268958.jpg';

//Path
  static const translationsAssetPath = 'assets/translations';

  //Paddings
  static const padding40 = 40.0;
  static const padding30 = 30.0;
  static const padding25 = 25.0;
  static const padding20 = 20.0;
  static const padding15 = 15.0;
  static const paddingButton = 13.0;
  static const padding10 = 10.0;
  static const padding5 = 5.0;

//
  static const textSizeMaxArea = 3800;
  //Url status
  static const success = 200;
  static const fault = 417;
  static const waiting = 403;
}
