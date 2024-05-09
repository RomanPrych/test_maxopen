import 'dart:async';
import 'package:latlong2/latlong.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:test_maxopen/common/di/di.dart';
import 'package:test_maxopen/data/repo/get_current_location_coordinates/get_current_location_coordinates_repo.dart';

class HomeProvider extends ChangeNotifier {
  HomeProvider(
    this.isInternet,
    this.isGeolocationAsses,
  ) {
    init();
  }

  final GetCurrentLocationCoordinatesRepo _getCurrentLocationCoordinatesRepo = locator.get<GetCurrentLocationCoordinatesRepo>();

  Future<void> init() async {
    state.isInternet = isInternet;
    notifyListeners();
    state.coordinates = await _getCurrentLocationCoordinatesRepo.getCurrentLocation();
    if(state.coordinates != null){
      state.mapController.move(
          state.coordinates!, 6);

    }
  }

  HomeProviderState state = HomeProviderState();
  final bool isInternet;
  final bool isGeolocationAsses;


}

class HomeProviderState {
  MapController mapController = MapController();
  bool isInternet = false;
  LatLng? coordinates;
}
