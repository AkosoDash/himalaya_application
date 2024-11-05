import 'package:flutter/material.dart';
import 'package:himalaya_application/core/utils/hex_to_color.dart';
import 'package:himalaya_application/features/introduction_screen/domain/entities/entity.introduction.dart';

class IntroductionModel extends Introduction {
  IntroductionModel({
    required super.title,
    required super.subtitle,
    required super.specialSubtitle,
    required super.description,
    required super.imagePath,
    required super.gradientColors,
  });

  factory IntroductionModel.fromJson(Map<String, String> json) {
    List<Color> gradientColors = (json['gradientColors'])
            ?.split(',')
            .map((colorStr) => hexToColor(colorStr.trim()))
            .toList() ??
        [Colors.white, Colors.black];

    return IntroductionModel(
      title: json["title"]!,
      subtitle: json["subtitle"]!,
      specialSubtitle: json["specialSubtitle"]!,
      description: json["description"]!,
      imagePath: json["imagePath"]!,
      gradientColors: gradientColors,
    );
  }
}
