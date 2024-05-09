import 'package:flutter/material.dart';
import 'package:test_maxopen/common/navigation/screens.dart';

MaterialPageRoute getPageRoute(String? name, {Object? arguments}) =>
    MaterialPageRoute(builder: (context) => getScreen(name, arguments: arguments));
