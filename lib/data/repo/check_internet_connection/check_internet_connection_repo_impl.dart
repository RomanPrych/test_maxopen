import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:test_maxopen/data/repo/check_internet_connection/check_internet_connection_repo.dart';

class CheckInternetConnectionRepoImpl implements CheckInternetConnectionRepo {
  @override
  Future<bool> isInternet() async {
    try {
      if(kIsWeb){
        return true;
      }
      final result = await InternetAddress.lookup('google.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } catch (e) {
      print('ERROR CheckInternetConnectionRepoImpl $e');
      return false;
    }
  }
}
