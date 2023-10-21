import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_saloon/app/screens/main_Page/provider/main_Page_Provider.dart';
import 'package:home_saloon/utils/routes/app_route_config.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';
import 'package:provider/provider.dart';
import 'app/screens/authentication/oTP_Screen/provider/oTP_Controller_Provider.dart';
import 'app/screens/authentication/oTP_Screen/provider/oTP_timer_Provider.dart';
import 'app/screens/authentication/short_Code_Screen/provider/check_Box_Provider.dart';
import 'app/screens/authentication/short_Code_Screen/provider/shortCode_Controller_Provider.dart';
import 'app/screens/home_Screen/provider/circular_Model_Provider.dart';
import 'app/screens/onBoarding/provider/onBoarding_Provider.dart';
import 'utils/localization/codegen_loader.g.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => OnBoardingProvider()),
        ChangeNotifierProvider(create: (_) => CheckBoxProvider()),
        ChangeNotifierProvider(create: (_) => ShortCodeControllerProvider()),
        ChangeNotifierProvider(create: (_) => OTPControllerProvider()),
        ChangeNotifierProvider(create: (_) => OTPTimerProvider()),
        ChangeNotifierProvider(create: (_) => CircularPercentModel()),
        ChangeNotifierProvider(create: (_) => MainPageProvider()),
        // ChangeNotifierProvider(create: (_) => CheckBoxProvider()),
        // ChangeNotifierProvider(create: (_) => CheckBoxProvider()),
        // ChangeNotifierProvider(create: (_) => CheckBoxProvider()),
      ],
      child: MaterialApp.router(
        supportedLocales: context.supportedLocales,
        localizationsDelegates: context.localizationDelegates,
        locale: context.locale,
        routerConfig: router,
        theme: ThemeData(
          primaryColor: MyColors.primaryMaterial,
          scaffoldBackgroundColor: MyColors.backgroundColor,
        ),
      ),
    );
  }
}



// comands for localization and key filder

// flutter pub run easy_localization:generate --source-dir ./assets/localization --output-dir ./lib/localization

// flutter pub run easy_localization:generate --source-dir ./assets/localization --output-dir ./lib/keys -f keys

// flutter pub run easy_localization:generate -h