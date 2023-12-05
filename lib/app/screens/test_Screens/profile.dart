import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:home_saloon/app/widgets/mediaQuery/dynamic_MediaQuery.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: MyCustomGridDelegate(
              tileHeight: 50,
              tileWidth: (context.MediaQueryWidth() / 2) - 12,
            ),
            itemCount: 20,
            itemBuilder: (context, index) {
              return Container(
                height: 20,
                width: 20,
                color: Colors.amber,
                child: Center(child: Text(index.toString())),
              );
            },
          ),
        ),
      ),
    );
  }
}

class MyCustomGridDelegate extends SliverGridDelegate {
  final double tileWidth;
  final double tileHeight;
  final int crossAxisCount;
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final bool reverseCrossAxis;
  MyCustomGridDelegate({
    required this.tileWidth,
    required this.tileHeight,
    this.crossAxisCount = 2,
    this.mainAxisSpacing = 8.0,
    this.crossAxisSpacing = 8.0,
    this.reverseCrossAxis = false,
  });
  @override
  SliverGridLayout getLayout(SliverConstraints constraints) {
    return SliverGridRegularTileLayout(
      crossAxisCount: crossAxisCount,
      mainAxisStride: tileHeight + mainAxisSpacing,
      crossAxisStride: tileWidth + crossAxisSpacing,
      childMainAxisExtent: tileHeight,
      childCrossAxisExtent: tileWidth,
      reverseCrossAxis: reverseCrossAxis,
    );
  }

  @override
  bool shouldRelayout(SliverGridDelegate oldDelegate) {
    return true;
  }
}





// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:uuid/uuid.dart';
// import 'package:http/http.dart' as http;
// import '../../../../utils/theme/text_Theme_Data.dart';
// import '../provider/map_Provider.dart';

// class SearchPlaces extends StatefulWidget {
//   const SearchPlaces({super.key});

//   @override
//   State<SearchPlaces> createState() => _SearchPlacesState();
// }

// class _SearchPlacesState extends State<SearchPlaces> {
//   TextEditingController _controller = TextEditingController();
//   var uuid = Uuid();
//   String _sessionToken = '1234556';
//   // ignore: unused_field
//   List<dynamic> _placesList = [];

//   @override
//   void initState() {
//     super.initState();
//     _controller.addListener(() {
//       onChange();
//     });
//   }

//   void onChange() {
//     // ignore: unnecessary_null_comparison
//     if (_sessionToken == null) {
//       setState(() {
//         _sessionToken = uuid.v4();
//       });
//     }

//     getSuggestion(_controller.text);
//   }

//   void getSuggestion(String input) async {
//     String kPLACES_API_KEY = 'AIzaSyDLfmJHEJDCjqlla7v0GHprRPQqJQwcAs8';

//     String baseURL =
//         'https://maps.googleapis.com/maps/api/place/autocomplete/json';

//     String request =
//         '$baseURL?input=$input&key=$kPLACES_API_KEY&sessiontoken=$_sessionToken&location=28.3111,70.1261&radius=500';

//     var response = await http.get(Uri.parse(request));
//     var data = response.body.toString();
//     print(data);

//     if (response.statusCode == 200) {
//       _placesList = jsonDecode(response.body.toString())['predictions'];
//     } else {
//       throw Exception('Failed to load data');
//       // throw Exception(
//       //     'Failed to load data. Status code: ${response.statusCode}');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             // search textfield
//             TextField(
//               autocorrect: false,
//               controller: _controller,
//               style: Theme.of(context).textTheme.bodyMedium,
//               decoration: InputDecoration(
//                 contentPadding: EdgeInsets.symmetric(horizontal: 20),
//                 hintText: 'Search places',
//                 hintStyle: MyTextStyle.type_Your_Message_Hint(context),
//               ),
//               keyboardType: TextInputType.text,
//               onChanged: (string) {
//                 setState(() {});
//               },
//             ),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: _placesList.length,
//                 itemBuilder: (context, index) {
//                   return Consumer<MapProvider>(
//                       builder: (context, value, child) {
//                     return InkWell(
//                       onTap: () {
//                         value.searchedAddress(
//                             _placesList[index]['description'], context);
//                       },
//                       child: ListTile(
//                         title: Text(_placesList[index]['description']),
//                       ),
//                     );
//                   });
//                 },
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

