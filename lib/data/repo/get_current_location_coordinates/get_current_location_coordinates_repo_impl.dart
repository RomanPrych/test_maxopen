import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:test_maxopen/data/repo/get_current_location_coordinates/get_current_location_coordinates_repo.dart';

class GetCurrentLocationCoordinatesRepoImpl implements GetCurrentLocationCoordinatesRepo {
  @override
  Future<LatLng?> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      return LatLng(position.latitude, position.longitude);
    } catch (e) {
      print('ERROR GetCurrentLocationCoordinatesRepoImpl = $e');
      return null;
    }
  }

}