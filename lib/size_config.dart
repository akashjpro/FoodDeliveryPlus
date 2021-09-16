import 'package:flutter/cupertino.dart';

class SizeConfig {
  static late MediaQueryData _mediaQuerydata;
  static late double screenwidth;
  static late double screenheight;

  void init(BuildContext context) {
    _mediaQuerydata = MediaQuery.of(context);

    screenwidth = _mediaQuerydata.size.width;
    screenheight = _mediaQuerydata.size.height;
  }
}
