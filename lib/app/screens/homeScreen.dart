import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_saloon/app/routes/app_route_const.dart';
import 'package:home_saloon/app/screens/contacts.dart';
import 'package:home_saloon/app/utils/CustomsizedBox.dart';
import '../../localization/keys/codegen_loader.g.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(LocaleKeys.I_am_Usama.tr()),
                addVerticalSpace(10),
                Text(LocaleKeys.Privacy_Policy_Paragraph.tr()),
                addVerticalSpace(50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () async {
                          await context.setLocale(Locale('en'));
                        },
                        child: Text(
                          'English',
                        )),
                    ElevatedButton(
                        onPressed: () async {
                          await context.setLocale(Locale('ar'));
                        },
                        child: Center(child: Text('العربية'))),
                    ElevatedButton(
                        onPressed: () async {
                          await context.setLocale(Locale('ur'));
                        },
                        child: Center(child: Text('اردو'))),
                    ElevatedButton(
                        onPressed: () {
                          GoRouter.of(context).pushNamed(MyRoutes.contact);
                        },
                        child: Center(child: Text('contact'))),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
