import 'package:flutter/material.dart';

class SizedConfig{
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context){
    final media = MediaQuery.of(context);
    screenWidth = media.size.width;
    screenHeight = media.size.height;
    orientation = media.orientation;

    defaultSize =  orientation == Orientation.landscape ?
    screenHeight! * 0.024:
    screenWidth! * 0.024;
  }
}