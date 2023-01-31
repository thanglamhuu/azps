import 'package:flutter/painting.dart';

/// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = 'FF${hexColor}';
    }

    if (hexColor.isEmpty) hexColor = "0";

    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
