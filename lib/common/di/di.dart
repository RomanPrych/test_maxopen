import 'package:get_it/get_it.dart';
import 'package:test_maxopen/data/repo/check_geolocation_service_is_available/check_geolocation_servise_is_avaliable_repo.dart';
import 'package:test_maxopen/data/repo/check_geolocation_service_is_available/check_geolocation_servise_is_avaliable_repo_impl.dart';
import 'package:test_maxopen/data/repo/check_internet_connection/check_internet_connection_repo.dart';
import 'package:test_maxopen/data/repo/check_internet_connection/check_internet_connection_repo_impl.dart';
import 'package:test_maxopen/data/repo/get_current_location_coordinates/get_current_location_coordinates_repo.dart';
import 'package:test_maxopen/data/repo/get_current_location_coordinates/get_current_location_coordinates_repo_impl.dart';

final locator = GetIt.instance;

Future setupLocator() async {
  locator.registerLazySingleton<CheckGeolocationServiceIsAvailableRepo>(
      () => CheckGeolocationServiceIsAvailableRepoImpl());
  locator.registerLazySingleton<GetCurrentLocationCoordinatesRepo>(
      () => GetCurrentLocationCoordinatesRepoImpl());
  locator.registerLazySingleton<CheckInternetConnectionRepo>(
      () => CheckInternetConnectionRepoImpl());
}
