import 'package:flutter/material.dart';
import 'package:home_saloon/app/core/theme/colors_theme_data.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
          child: Column(
            children: [
              TextFormField(
                cursorColor: MyColors.primaryColor,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search_rounded,
                    color: MyColors.primaryColor,
                  ),
                  hintText: 'Search here',
                  hintStyle: TextStyle(fontFamily: 'DMSans'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: MyColors.primaryColor),
                      borderRadius: BorderRadius.circular(100)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
