import 'dart:convert';
import 'package:home_saloon/app/core/theme/map_Theme/map_Theme_String.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapProvider extends ChangeNotifier {
  // map controller
  Completer<GoogleMapController> _mapController =
      Completer<GoogleMapController>();
// search textfield controller
  final TextEditingController _searchController = TextEditingController();

  // map theme
  // bool isMapDark = false;
  String currentMapMode = '';
  void initializeTheme(BuildContext context) {
    DefaultAssetBundle.of(context)
        .loadString(MyMapTheme.dark_Theme)
        .then((value) {
      currentMapMode = value;
      notifyListeners();
    });
  }

  // void toogleMapTheme(BuildContext context) {
  //   isMapDark = !isMapDark;
  //   isMapDark
  //       ? DefaultAssetBundle.of(context)
  //           .loadString(MyMapTheme.light_Theme)
  //           .then((value) {
  //           currentMapMode = value;
  //           print('set theme light');
  //           notifyListeners();
  //         })
  //       : DefaultAssetBundle.of(context)
  //           .loadString(MyMapTheme.dark_Theme)
  //           .then((value) {
  //           currentMapMode = value;
  //           print('set theme dark');
  //           notifyListeners();
  //         });
  //   notifyListeners();
  // }

// initial longitude and latitude
  double _newLatitude = 28.3110941;
  double _newLongitude = 70.1261227;

  // initial camera position
  CameraPosition _mapInitialPosition = CameraPosition(
    target: LatLng(28.42240, 70.31689),
    zoom: 14.4746,
  );

// all get funtions
  CameraPosition get mapInitialPosition => _mapInitialPosition;
  Completer<GoogleMapController> get mapController => _mapController;
  TextEditingController get searchController => _searchController;
  double get newLatitude => _newLatitude;
  double get newLongitude => _newLongitude;

// search address function
  void searchedAddress(String searchedText, BuildContext context) async {
    GoRouter.of(context).pop();
    // this function is to change string address to dimensional address
    locationFromAddress(searchedText).then((locations) async {
      if (locations.isNotEmpty) {
        _newLatitude = locations[0].latitude;
        _newLongitude = locations[0].longitude;
        notifyListeners();
        // move camera to searched address .function
        final GoogleMapController controller = await _mapController.future;
        await controller
            .animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
          bearing: 0,
          target: LatLng(locations[0].latitude, locations[0].longitude),
          tilt: 31.520369600000002,
          zoom: 74.35874729999999,
        )));
        notifyListeners();
      }
    });
  }

// add pointer on longPress
  void onLongPressOnMap(LatLng latLng) {
    list.add(Marker(
      markerId: MarkerId('2'),
      position: latLng,
      infoWindow: InfoWindow(title: 'new pin'),
    ));
    notifyListeners();
  }

// pointers on map list
  List<Marker> marker = [];
  List<Marker> list = [
    Marker(
      markerId: MarkerId('1'),
      position: LatLng(28.42240, 70.31689),
      infoWindow: InfoWindow(title: 'Built-In'),
    )
  ];

// fubction to get user's current/live location
  Future<void> getUserCurrentLocation() async {
    await Geolocator.requestPermission()
        .then((value) {})
        .onError((error, stackTrace) {
      print('error' + error.toString());
    });

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best,
        timeLimit: Duration(milliseconds: 100));
    print(position.longitude.toString() + ' ' + position.latitude.toString());

    final GoogleMapController controller = await _mapController.future;
    await controller
        .animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
      bearing: 0,
      target: LatLng(position.latitude, position.longitude),
      tilt: 31.520369600000002,
      zoom: 74.35874729999999,
    )));
    notifyListeners();
  }

  // ignore: unused_field
  List<dynamic> _placesList = [];
  List<dynamic> get placesList => _placesList;

  void initializeLocationSearch() {
    _searchController.addListener(() {
      onChange();
    });
  }

  void onChange() {
    getSuggestion(_searchController.text);
    notifyListeners();
  }

  void getSuggestion(String input) async {
    String kPLACES_API_KEY = 'AIzaSyDLfmJHEJDCjqlla7v0GHprRPQqJQwcAs8';

    String baseURL =
        'https://maps.googleapis.com/maps/api/place/autocomplete/json';

    String request =
        '$baseURL?input=$input&key=$kPLACES_API_KEY&location=28.3111,70.1261&radius=5';

    var response = await http.get(Uri.parse(request));
    var data = response.body.toString();
    print(data);

    if (response.statusCode == 200) {
      _placesList = jsonDecode(response.body.toString())['predictions'];
    } else {
      throw Exception('Failed to load data');
    }
  }
}

  // String request =
  //     '$baseURL?input=$input&key=$kPLACES_API_KEY&sessiontoken=$_sessionToken&location=$currentLatitude,$currentLongitude&radius=500';

 