import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:test_maxopen/common/di/di.dart';
import 'package:test_maxopen/common/navigation/navigation.dart';
import 'package:test_maxopen/common/utils/snackbar.dart';
import 'package:test_maxopen/data/repo/check_geolocation_service_is_available/check_geolocation_servise_is_avaliable_repo.dart';
import 'package:test_maxopen/data/repo/check_internet_connection/check_internet_connection_repo.dart';

class LoginProvider extends ChangeNotifier {
  LoginProviderState state = LoginProviderState();
  final CheckInternetConnectionRepo _checkInternetConnectionRepo =
      locator.get<CheckInternetConnectionRepo>();
  final CheckGeolocationServiceIsAvailableRepo
      _checkGeolocationServiceIsAvailableRepo =
      locator.get<CheckGeolocationServiceIsAvailableRepo>();

  Future<void> onNextTap() async {
    _setLoadingButton(true);
    if (_validation()) {
      state.isInternet = await _checkInternetConnectionRepo.isInternet();
      state.isGeolocationAsses =
          await _checkGeolocationServiceIsAvailableRepo.isGeolocation();
      _setLoadingButton(false);
      Navigation.openMainPage(
        isInternet: state.isInternet,
        isGeolocationAsses: state.isGeolocationAsses,
        name: state.controller.text.trim(),
      );
    } else {
      _setLoadingButton(false);
      msgToast(
          'Помилка імʼя, переконайтеся що поле не пусте і довжина більше двох символів');
    }
  }

  void _setLoadingButton(bool loading) {
    state.isLoadingButton = loading;
    notifyListeners();
  }

  bool _validation() {
    return state.controller.text.trim().isNotEmpty &&
        state.controller.text.trim().length > 2;
  }
}

class LoginProviderState {
  bool isInternet = false;
  bool isLoadingButton = false;
  bool isGeolocationAsses = false;
  TextEditingController controller = TextEditingController();
}
