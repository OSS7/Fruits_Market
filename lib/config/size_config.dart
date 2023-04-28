import 'package:fleasy/fleasy.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// A class has several variables, provide us a size of user screen.
class SizeConfig {
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;

  ///if the mobile orientation is landscape or portrait
  static Orientation? orientation;

  void init(BuildContext context) {
    /// by [ fleasy ] package help => { context.screenWidth } the same as { MediaQuery.of(context).size.width }
    screenWidth = context.screenWidth;
    screenHeight = context.screenHeight;
    orientation = context.orientation;

    ///if mobile on landscape mode  height == width * 0.024 .
    defaultSize = orientation == Orientation.landscape
        ? screenHeight! * 0.024
        : screenWidth! * 0.024;
  }
}
