import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/sliderProvider.dart';

class CustomSlider extends StatelessWidget {
  final double slideHeight;
  final double slideWidth;
  final double selectedBeadsHeight;
  final double unSelectedBeadsHeight;
  final int maxValue;
  final Color foreGround_Color;
  final Color backGround_Color;
  final Color foreGroundShadow_Color;
  final Color backGroundShadow_Color;
  final double shadow_Blur_Radius;
  final Offset shadow_offset;
  final Duration slider_Animation_Duration;
  final Duration beads_Animation_Duration;
  const CustomSlider({
    super.key,
    required this.slideHeight,
    required this.slideWidth,
    required this.selectedBeadsHeight,
    required this.unSelectedBeadsHeight,
    required this.maxValue,
    this.foreGround_Color = const Color(0xffF74C69),
    this.backGround_Color = const Color(0xffEAEBEC),
    this.foreGroundShadow_Color = const Color.fromARGB(0, 0, 0, 0),
    this.backGroundShadow_Color = const Color.fromARGB(0, 0, 0, 0),
    this.shadow_Blur_Radius = 5,
    this.shadow_offset = const Offset(0, 2),
    this.slider_Animation_Duration = const Duration(milliseconds: 300),
    this.beads_Animation_Duration = const Duration(milliseconds: 300),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // this stack is to show coloure container slide on dull slide and beads on the top
      child: Stack(
        children: [
          // this container is to handel colored container slide and dull slide
          Container(
            width: selectedBeadsHeight > slideWidth
                ? selectedBeadsHeight
                : slideWidth,
            child: Row(
              // this colum and alignment is to handle that slider always remain in centre according to beads
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // this stack is to handel colored container slide on  dull slide only
                Stack(
                  children: [
                    // this is the container for background of slider
                    Container(
                      height: slideHeight,
                      width: slideWidth,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: backGroundShadow_Color,
                              blurRadius: shadow_Blur_Radius,
                              offset: shadow_offset,
                            ),
                          ],
                          color: backGround_Color,
                          borderRadius: BorderRadius.circular(100)),
                    ),
                    // this is the container for foreground of slider , which changes after changing value
                    Consumer<CustomSliderProvider>(
                      builder: (context, value, child) {
                        return AnimatedContainer(
                          duration: slider_Animation_Duration,
                          height: slideHeight * value.sliderValue / maxValue,
                          width: slideWidth,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: foreGroundShadow_Color,
                                  blurRadius: shadow_Blur_Radius,
                                  offset: shadow_offset,
                                ),
                              ],
                              color: foreGround_Color,
                              borderRadius: BorderRadius.circular(100)),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          // these are the beads
          Consumer<CustomSliderProvider>(
            builder: (context, value, child) {
              return Container(
                  height: slideHeight,
                  width: selectedBeadsHeight,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List<int>.generate(maxValue + 1, (i) => i)
                          .map((e) =>
                              // beads container
                              GestureDetector(
                                onTap: () {
                                  value.onChangeSliderValue(e);
                                },
                                child: Container(
                                  height: selectedBeadsHeight,
                                  width: selectedBeadsHeight,
                                  child: Column(
                                    children: [
                                      Expanded(child: Container()),
                                      Center(
                                        child: AnimatedContainer(
                                          duration: beads_Animation_Duration,
                                          height: value.sliderValue >= e
                                              ? selectedBeadsHeight
                                              : unSelectedBeadsHeight,
                                          width: value.sliderValue >= e
                                              ? selectedBeadsHeight
                                              : unSelectedBeadsHeight,
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: value.sliderValue >= e
                                                      ? foreGroundShadow_Color
                                                      : backGroundShadow_Color,
                                                  blurRadius:
                                                      shadow_Blur_Radius,
                                                  offset: shadow_offset,
                                                ),
                                              ],
                                              color: value.sliderValue >= e
                                                  ? foreGround_Color
                                                  : backGround_Color,
                                              borderRadius:
                                                  BorderRadius.circular(100)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ))
                          .toList()));
            },
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../provider/sliderProvider.dart';

// class CustomSlider extends StatelessWidget {
//   final double slideHeight;
//   final double slideWidth;
//   final double selectedBeadsHeight;
//   final double unSelectedBeadsHeight;
//   final int maxValue;
//   final Color foreGround_Color;
//   final Color backGround_Color;
//   final Color foreGroundShadow_Color;
//   final Color backGroundShadow_Color;
//   final double shadow_Blur_Radius;
//   final Offset shadow_offset;
//   final Duration slider_Animation_Duration;
//   final Duration beads_Animation_Duration;
//   const CustomSlider({
//     super.key,
//     required this.slideHeight,
//     required this.slideWidth,
//     required this.selectedBeadsHeight,
//     required this.unSelectedBeadsHeight,
//     required this.maxValue,
//     this.foreGround_Color = Colors.deepPurpleAccent,
//     this.backGround_Color = Colors.white,
//     this.foreGroundShadow_Color = const Color.fromARGB(65, 124, 77, 255),
//     this.backGroundShadow_Color = const Color.fromARGB(17, 0, 0, 0),
//     this.shadow_Blur_Radius = 5,
//     this.shadow_offset = const Offset(0, 2),
//     this.slider_Animation_Duration = const Duration(milliseconds: 300),
//     this.beads_Animation_Duration = const Duration(milliseconds: 300),
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // this stack is to show coloure container slide on dull slide and beads on the top
//       child: Stack(
//         children: [
//           // this container is to handel colored container slide and dull slide
//           Container(
//             height: selectedBeadsHeight > slideHeight
//                 ? selectedBeadsHeight
//                 : slideHeight,
//             child: Column(
//               // this colum and alignment is to handle that slider always remain in centre according to beads
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // this stack is to handel colored container slide on  dull slide only
//                 Stack(
//                   children: [
//                     // this is the container for background of slider
//                     Container(
//                       height: slideHeight,
//                       width: slideWidth,
//                       decoration: BoxDecoration(
//                           boxShadow: [
//                             BoxShadow(
//                               color: backGroundShadow_Color,
//                               blurRadius: shadow_Blur_Radius,
//                               offset: shadow_offset,
//                             ),
//                           ],
//                           color: backGround_Color,
//                           borderRadius: BorderRadius.circular(100)),
//                     ),
//                     // this is the container for foreground of slider , which changes after changing value
//                     Consumer<CustomSliderProvider>(
//                       builder: (context, value, child) {
//                         return AnimatedContainer(
//                           duration: slider_Animation_Duration,
//                           height: slideHeight,
//                           width: slideWidth * value.sliderValue / maxValue,
//                           decoration: BoxDecoration(
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: foreGroundShadow_Color,
//                                   blurRadius: shadow_Blur_Radius,
//                                   offset: shadow_offset,
//                                 ),
//                               ],
//                               color: foreGround_Color,
//                               borderRadius: BorderRadius.circular(100)),
//                         );
//                       },
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           // these are the beads
//           Consumer<CustomSliderProvider>(
//             builder: (context, value, child) {
//               return Container(
//                   width: slideWidth,
//                   height: selectedBeadsHeight,
//                   child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: List<int>.generate(maxValue + 1, (i) => i)
//                           .map((e) =>
//                               // beads container
//                               GestureDetector(
//                                 onTap: () {
//                                   value.onChangeSliderValue(e);
//                                 },
//                                 child: AnimatedContainer(
//                                   duration: beads_Animation_Duration,
//                                   height: value.sliderValue >= e
//                                       ? selectedBeadsHeight
//                                       : unSelectedBeadsHeight,
//                                   width: value.sliderValue >= e
//                                       ? selectedBeadsHeight
//                                       : unSelectedBeadsHeight,
//                                   decoration: BoxDecoration(
//                                       boxShadow: [
//                                         BoxShadow(
//                                           color: value.sliderValue >= e
//                                               ? foreGroundShadow_Color
//                                               : backGroundShadow_Color,
//                                           blurRadius: shadow_Blur_Radius,
//                                           offset: shadow_offset,
//                                         ),
//                                       ],
//                                       color: value.sliderValue >= e
//                                           ? foreGround_Color
//                                           : backGround_Color,
//                                       borderRadius: BorderRadius.circular(100)),
//                                 ),
//                               ))
//                           .toList()));
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
