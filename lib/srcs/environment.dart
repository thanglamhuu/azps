import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'utils/hex_color.dart';

class Environment {
  static String get fileName =>
      kReleaseMode ? ".env.production" : ".env.development";
  static String get appTitle => dotenv.env['APP_TITLE'] ?? 'MY_FALLBACK';
  static Color get appColorPrimary =>
      HexColor(dotenv.env['APP_COLOR_PRIMARY'] ?? '');
  static Color get appColorPrimaryLigth =>
      HexColor(dotenv.env['APP_COLOR_PRIMARY_LIGTH'] ?? '');
  static Color get appColorFore =>
      HexColor(dotenv.env['APP_COLOR_FOREGROUND'] ?? '');
  static Color get appColor1 => HexColor(dotenv.env['APP_COLOR_1'] ?? '');
  static Color get appColor2 => HexColor(dotenv.env['APP_COLOR_2'] ?? '');
}
