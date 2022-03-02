import 'package:flutter/cupertino.dart';

class ColorManager {
  static Color primary = HexColor.fromHex("#ED9728");
  static Color darkGray = HexColor.fromHex("#525252");
  static Color gray = HexColor.fromHex("#737477");
  static Color lightGray = HexColor.fromHex("#9E9E9E");
}

extension HexColor on Color {
  //Convert hexadecimal color to Color object
  static Color fromHex(String hexColorCode) {
    hexColorCode =
        hexColorCode.replaceAll('#', ''); //Trim the color with only the code

    //IF the given color has no opacity then set opacity with 100% by 'FF'
    if (hexColorCode.length == 6) {
      hexColorCode = "FF" + hexColorCode;
    }

    return Color(int.parse(hexColorCode, radix: 16));
  }
}
