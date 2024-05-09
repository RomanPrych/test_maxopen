import 'package:flutter/cupertino.dart';

extension ExtensionOnDouble on double {
  SizedBox get wsb => SizedBox(width: this);
  SizedBox get hsb =>  SizedBox(height: this);
}