import 'package:geolocator/geolocator.dart';
import 'package:test_maxopen/data/repo/check_geolocation_service_is_available/check_geolocation_servise_is_avaliable_repo.dart';

class CheckGeolocationServiceIsAvailableRepoImpl
    implements CheckGeolocationServiceIsAvailableRepo {
  @override
  Future<bool> isGeolocation() async {
    try {
       print('>>>>>>>>>>>>>>${await Geolocator.isLocationServiceEnabled()}');
      return await Geolocator.isLocationServiceEnabled();
    } catch (e) {
      print('ERROR CheckGeolocationServiceIsAvailableRepoImpl $e');
      return false;
    }
  }
}
