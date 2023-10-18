import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_saloon/app/routes/app_route_config.dart';
import 'localization/codegen_loader.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      path: 'assets/localization',
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
        Locale('ur'),
      ],
      fallbackLocale: Locale('en'),
      assetLoader: CodegenLoader(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      routerConfig: router,
    );
  }
}
// MultiProvider(
//       providers: [
//         // ChangeNotifierProvider(create: (_) => NavigationProvider()),
//         // ChangeNotifierProvider(create: (_) => RememberMeProvider()),
//       ],

// comands for localization and key filder

// flutter pub run easy_localization:generate --source-dir ./assets/localization --output-dir ./lib/localization

// flutter pub run easy_localization:generate --source-dir ./assets/localization --output-dir ./lib/keys -f keys

// flutter pub run easy_localization:generate -h