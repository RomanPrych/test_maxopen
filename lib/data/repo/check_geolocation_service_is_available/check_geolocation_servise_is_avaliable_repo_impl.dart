import 'package:geolocator/geolocator.dart';
import 'package:test_maxopen/data/repo/check_geolocation_service_is_available/check_geolocation_servise_is_avaliable_repo.dart';

class CheckGeolocationServiceIsAvailableRepoImpl
    implements CheckGeolocationServiceIsAvailableRepo {
  @override
  Future<bool> isGeolocation() async {
    try {
      LocationPermission permission = await Geolocator.requestPermission();
      return permission != LocationPermission.denied &&
          permission != LocationPermission.deniedForever;
    } catch (e) {
      print('ERROR CheckGeolocationServiceIsAvailableRepoImpl $e');
      return false;
    }
  }
}
