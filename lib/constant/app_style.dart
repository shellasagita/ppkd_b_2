import 'package:flutter/rendering.dart';

class AppStyle {
  static TextStyle fontBold({double? fontSize}) {
    return TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize ?? 16.0);
  }
}
