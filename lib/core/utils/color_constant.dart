import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray600 = fromHex('#6c757d');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color blueGray400 = fromHex('#888888');

  static Color gray90099 = fromHex('#99011627');

  static Color gray900 = fromHex('#011627');

  static Color orange600 = fromHex('#ed8f03');

  static Color gray200 = fromHex('#f0f0f0');

  static Color gray60059 = fromHex('#596c757d');

  static Color gray60026 = fromHex('#266c757d');

  static Color orange300 = fromHex('#ffb75e');

  static Color gray100 = fromHex('#f7f7f7');

  static Color black900 = fromHex('#000000');

  static Color gray10001 = fromHex('#f5f4f6');

  static Color lightGreen700 = fromHex('#72b01d');

  static Color redA400 = fromHex('#ef233c');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray6003f = fromHex('#3f6c757d');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
