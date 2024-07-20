// ignore_for_file: prefer_conditional_assignment, unnecessary_null_comparison
import 'package:flutter/material.dart';

class LanguageManager {
  static LanguageManager _instance = LanguageManager.init();

  static LanguageManager get instance {
    if (_instance == null) _instance = LanguageManager.init();
    return _instance;
  }

  LanguageManager.init();

  final enLocale = const Locale("en", "US");
  final trLocale = const Locale('tr', 'TR');
  List<Locale> get supportedLocales => [enLocale, trLocale];
}
