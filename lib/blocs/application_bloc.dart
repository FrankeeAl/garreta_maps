import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:garreta_google_maps/services/geolocator_service.dart';
import 'package:geolocator/geolocator.dart';

class ApplicationBloc with ChangeNotifier {
  final geoLocatorService = GeolocatorService();

  Position currentLocation;
  ApplicationBloc() {
    setCurrentLocation();
  }
  setCurrentLocation() async {
    currentLocation = await geoLocatorService.getCurrentLocation();
    notifyListeners();
  }
}
