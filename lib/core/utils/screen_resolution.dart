import 'package:flutter/material.dart';

/// Function to get screen width and height
Map<String, double> getScreenSize(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;

  return {
    'width': screenWidth,
    'height': screenHeight,
  };
}
