import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:himalaya_application/core/utils/hex_to_color.dart';
import 'package:himalaya_application/core/utils/screen_resolution.dart';
import 'package:himalaya_application/features/introduction_screen/presentation/blocs/bloc.introduction.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    context.read<IntroductionBloc>().fetchIntroductions();
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    Map<String, double> screenSize = getScreenSize(context);
    final List<Map<String, String>> gridItems = [
      {
        'iconPath': 'assets/home_screen_images/kimia_icon.png',
        'label': 'Kimia',
      },
      {
        'iconPath': 'assets/home_screen_images/biologi_icon.png',
        'label': 'Biologi',
      },
      {
        'iconPath': 'assets/home_screen_images/kimia_icon.png',
        'label': 'Kimia',
      },
      {
        'iconPath': 'assets/home_screen_images/biologi_icon.png',
        'label': 'Biologi',
      },
      {
        'iconPath': 'assets/home_screen_images/kimia_icon.png',
        'label': 'Kimia',
      },
      {
        'iconPath': 'assets/home_screen_images/biologi_icon.png',
        'label': 'Biologi',
      },
      // Add more items as needed
    ];

    return Scaffold(
      body: BlocBuilder<IntroductionBloc, IntroductionState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Container(
              width: double.infinity,
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.only(top: 24),
              decoration: const BoxDecoration(color: Color(0xFF06AAD1)),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 64,
                          width: 56,
                          child: Image.asset(
                              "assets/splash_screen_images/splash_screen.png"),
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: hexToColor("#FFFFFF"),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: InkWell(
                                onTap: () => log("nandemonaiya"),
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  child: Image.asset(
                                      "assets/home_screen_images/class_icon.png"),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Container(
                              decoration: BoxDecoration(
                                color: hexToColor("#FFFFFF"),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: InkWell(
                                onTap: () => log("nandemonaiya"),
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  child: Image.asset(
                                      "assets/home_screen_images/notification_icon.png"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(24, 32, 24, 0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF448AB5),
                          Color(0xFF2D6FA7),
                        ],
                      ),
                    ),
                    padding: const EdgeInsets.fromLTRB(24, 28, 0, 28),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 190,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Welcome Back Najwa",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              const Text(
                                "Raih prestasimu, genggam masa depan emas dan #JadilahJuara",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 11,
                                ),
                              ),
                              InkWell(
                                onTap: () => log("aowkoawkoawkoakw"),
                                child: Container(
                                  margin: const EdgeInsets.only(top: 40),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 16),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: const Text(
                                    "Task Details",
                                    style: TextStyle(
                                      color: Color(0xFF3477AB),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 94,
                          width: 156,
                          child: Image.asset(
                              "assets/home_screen_images/welcome_banner_image.png"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 72),
                    width: screenSize['width'],
                    padding: const EdgeInsets.fromLTRB(32, 32, 32, 0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                        ),
                        BoxShadow(
                          color: Colors.white,
                          spreadRadius: -12.0,
                          blurRadius: 12.0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Your Courses",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF3795BE),
                              ),
                            ),
                            InkWell(
                              child: Row(
                                children: [
                                  Text(
                                    "Sort",
                                    style: TextStyle(
                                      color: Color(0xFF3795BE),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  Icon(
                                    Icons.sort_rounded,
                                    color: Color(0xFF3795BE),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 360,
                          width: screenSize['width'],
                          child: GridView.count(
                            mainAxisSpacing: 12,
                            primary: false,
                            crossAxisCount: 3,
                            children: List.generate(gridItems.length, (index) {
                              final item = gridItems[index];
                              return Column(
                                children: [
                                  Container(
                                    width: 72,
                                    height: 72,
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(16)),
                                      gradient: LinearGradient(colors: [
                                        Color.fromARGB(255, 69, 163, 192),
                                        Color.fromARGB(255, 71, 140, 183),
                                        Color.fromARGB(255, 24, 87, 154)
                                      ]),
                                    ),
                                    child: SizedBox(
                                      child: Image.asset(item['iconPath']!),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 8),
                                    child: Text(
                                      item['label']!,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF3795BE),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
