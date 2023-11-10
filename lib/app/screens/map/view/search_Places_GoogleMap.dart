import 'package:flutter/material.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';
import 'package:provider/provider.dart';
import '../../../common/textField/map_Search_TextFiled.dart';
import '../provider/map_Provider.dart';

class SearchPlaces extends StatelessWidget {
  const SearchPlaces({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // search textfield
            MapTextField(),
            Consumer<MapProvider>(builder: (context, value, child) {
              return Expanded(
                child: ListView.builder(
                  itemCount: value.placesList.length,
                  itemBuilder: (context, index) {
                    return Consumer<MapProvider>(
                        builder: (context, value, child) {
                      return InkWell(
                        onTap: () {
                          value.searchedAddress(
                              value.placesList[index]['description'], context);
                        },
                        child: ListTile(
                          title: Text(
                            value.placesList[index]['description'],
                            style: MyTextStyle.map_Search_List(context),
                          ),
                        ),
                      );
                    });
                  },
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
