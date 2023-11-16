import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/mediaQuery/dynamic_MediaQuery.dart';
import 'package:home_saloon/app/screens/test_Screens/bottomSheet/components/customSlider.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Home'),
      // ),
      body: Container(
        height: context.MediaQueryHeight(),
        width: context.MediaQueryWidth(),
        child: Center(
            child: CustomSlider(
          slideHeight: 210,
          slideWidth: 3,
          selectedBeadsHeight: 18,
          unSelectedBeadsHeight: 12,
          maxValue: 4,
        )),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import '../provider/testg.dart';

// class Home extends StatelessWidget {
//   const Home({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     YourClass yourInstance = YourClass();
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Center(
//           child: Container(
//             height: MediaQuery.of(context).size.height,
//             width: MediaQuery.of(context).size.width,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   height: 400,
//                   child: ListView.builder(
//                     itemCount: yourInstance.calender[0].length,
//                     itemBuilder: (context, index) {
//                       return Text(index.toString());
//                     },
//                   ),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     // value.calendarLoops();
//                   },
//                   child: Text('Generate Calendar'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

