import 'package:latlong2/latlong.dart';

abstract interface class GetCurrentLocationCoordinatesRepo {
  Future<LatLng?> getCurrentLocation();
}