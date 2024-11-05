import 'dart:ui';

Color hexToColor(String hexColor) {
  // Remove the '#' if it's there
  hexColor = hexColor.replaceFirst('#', '');

  // Ensure the length is either 6 or 8 characters
  if (hexColor.length == 6) {
    // If it's a 6-character hex, prepend 'FF' for full opacity
    hexColor = 'FF$hexColor';
  } else if (hexColor.length != 8) {
    throw FormatException('Invalid hex color format: $hexColor');
  }

  // Parse the hex string to an integer and create the Color
  return Color(int.parse('0x$hexColor'));
}
