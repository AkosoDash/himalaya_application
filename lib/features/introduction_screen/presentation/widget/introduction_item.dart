import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:himalaya_application/core/utils/hex_to_color.dart';
import 'package:himalaya_application/features/introduction_screen/domain/entities/entity.introduction.dart';

class IntroductionItem extends StatelessWidget {
  final Introduction introduction;
  final int index;
  final int lastIndex;

  const IntroductionItem({
    super.key,
    required this.introduction,
    required this.index,
    required this.lastIndex,
  });

  @override
  Widget build(BuildContext context) {
    final List<int> indexItem = [0, 1, 2];
    return Padding(
      padding: EdgeInsets.only(top: 120, bottom: index == lastIndex ? 40 : 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Check if the current index is the last index
          if (index == lastIndex) ...[
            // Reverse layout
            Image.asset(introduction.imagePath),
            Column(
              children: [
                Text(
                  introduction.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      introduction.subtitle,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      introduction.specialSubtitle,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 56.0, vertical: 8.0),
                  child: Text(
                    introduction.description,
                    style: const TextStyle(
                      color: Color.fromARGB(235, 245, 245, 245),
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: indexItem.map((item) {
                      return Container(
                        width: 12.0,
                        height: 12.0,
                        margin: const EdgeInsets.symmetric(horizontal: 3.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: item == index
                              ? hexToColor("#FFEE62")
                              : hexToColor("#D9D9D9"),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: hexToColor("#007DBE"), // Background color
                    borderRadius: BorderRadius.circular(
                        8.0), // Set your desired border radius
                  ),
                  child: TextButton(
                    style: ButtonStyle(
                      // Make the foreground color transparent to see the container's background
                      foregroundColor:
                          WidgetStateProperty.all<Color>(Colors.transparent),
                      padding: WidgetStateProperty.all<EdgeInsets>(
                        const EdgeInsets.symmetric(
                            vertical: 12.0,
                            horizontal: 16.0), // Padding inside the button
                      ),
                    ),
                    onPressed: () => log("Direct to Registration Screen"),
                    child: const Text(
                      "Let's Get Started",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600), // Text color
                    ),
                  ),
                )
              ],
            ),
          ] else ...[
            // Normal layout
            Column(
              children: [
                Text(
                  introduction.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      introduction.subtitle,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      introduction.specialSubtitle,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 56.0, vertical: 8.0),
                  child: Text(
                    introduction.description,
                    style: const TextStyle(
                      color: Color.fromARGB(235, 245, 245, 245),
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: indexItem.map((item) {
                      return Container(
                        width: 12.0,
                        height: 12.0,
                        margin: const EdgeInsets.symmetric(horizontal: 3.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: item == index
                              ? hexToColor("#FFEE62")
                              : hexToColor("#D9D9D9"),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            Image.asset(introduction.imagePath),
          ],
        ],
      ),
    );
  }
}
