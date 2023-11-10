import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/utils/routes/app_route_const.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';
import 'package:provider/provider.dart';
import '../../../../resources/icons/app_Icons.dart';
import '../provider/map_Provider.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Map
            Expanded(
              child: Consumer<MapProvider>(builder: (context, value, child) {
                return GoogleMap(
                  myLocationEnabled: true,
                  onLongPress: (argument) {
                    value.onLongPressOnMap(argument);
                  },

                  compassEnabled: true,
                  zoomControlsEnabled: false,
                  rotateGesturesEnabled: true,
                  markers: Set<Marker>.of(value.list),
                  cameraTargetBounds: CameraTargetBounds.unbounded,
                  // mapType: MapType.normal,
                  initialCameraPosition: value.mapInitialPosition,
                  onMapCreated: (GoogleMapController controller) {
                    value.mapController.complete(controller);
                    controller.setMapStyle(value.currentMapMode);
                  },
                );
              }),
            ),
          ],
        ),
      ),
      // floating action button
      floatingActionButton:
          Consumer<MapProvider>(builder: (context, value, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // FloatingActionButton(
            //     backgroundColor: MyColors.primaryColor,
            //     mini: true,
            //     onPressed: () {
            //       value.toogleMapTheme(context);
            //     },
            //     child: value.isMapDark
            //         ? Icon(Icons.dark_mode)
            //         : Icon(Icons.light_mode_rounded)),
            FloatingActionButton(
              backgroundColor: MyColors.primaryColor,
              mini: true,
              onPressed: () {
                value.initializeLocationSearch();
                GoRouter.of(context).pushNamed(MyRoutes.searchPlaces);
              },
              child: SvgPicture.asset(
                MySvgPath.search,
                // ignore: deprecated_member_use
                color: Colors.white,
              ),
            ),
            heightC(10),
            FloatingActionButton(
              backgroundColor: MyColors.primaryColor,
              onPressed: () {
                value.getUserCurrentLocation();
              },
              child: Icon(Icons.my_location),
            ),
          ],
        );
      }),
    );
  }
}
