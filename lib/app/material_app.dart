import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:home_saloon/app/core/routes/app_route_config.dart';
import 'package:home_saloon/app/core/theme/colors_theme_data.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: (_, child) {
        return ScrollConfiguration(behavior: CustomBehavior(), child: child!);
      },
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      routerConfig: router,
      theme: ThemeData(
        // useMaterial3: true,
        primaryColor: MyColors.primaryMaterial,
        scaffoldBackgroundColor: MyColors.backgroundColor,
      ),
    );
  }
}

// class CustomBehaviour extends ScrollBehavior {
//   @override
//   Widget buildOverscrollIndicator(
//     BuildContext context,
//     Widget child,
//     ScrollableDetails details,
//   ) {
//     return GlowingOverscrollIndicator(
//       child: child,
//       showLeading: true,
//       showTrailing: false,
//       axisDirection: details.direction,
//       color: MyColors.backgroundColor,
//     );
//   }
// }
class CustomBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    return StretchingOverscrollIndicator(
      axisDirection: AxisDirection.down,
      child: child,
    );
  }
}
