import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mindlee_demo/routers/app_router.dart';
import 'package:mindlee_demo/utils/constant.dart';
import 'package:mindlee_demo/utils/translations/language_manager.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(ProviderScope(
    child: EasyLocalization(
        supportedLocales: LanguageManager.instance.supportedLocales,
        path: AppConstant.translationsAssetPath,
        child: const MyApp()),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Mindlee Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        locale: context.locale,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        routerDelegate: router.delegate(),
        routeInformationParser: router.defaultRouteParser(),
      );
    });
  }
}
