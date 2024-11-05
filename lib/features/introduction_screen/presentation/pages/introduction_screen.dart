import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:himalaya_application/features/introduction_screen/presentation/blocs/bloc.introduction.dart';
import 'package:himalaya_application/features/introduction_screen/presentation/widget/introduction_item.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    context
        .read<IntroductionBloc>()
        .fetchIntroductions(); // Fetch introductions
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<IntroductionBloc, IntroductionState>(
        builder: (context, state) {
          if (state is IntroductionLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is IntroductionLoaded) {
            return CarouselSlider.builder(
              itemCount: state.introductions.length,
              itemBuilder: (context, index, realIndex) {
                final introduction = state.introductions[index];
                return Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: introduction
                          .gradientColors, // Use gradient colors from each Introduction
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: IntroductionItem(
                    introduction: introduction,
                    index: index,
                    lastIndex:
                        state.introductions.length - 1, // Pass last index
                  ),
                );
              },
              options: CarouselOptions(
                height: MediaQuery.of(context)
                    .size
                    .height, // Set height to screen height
                aspectRatio: 16 / 9,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: false,
              ),
            );
          } else {
            return const Center(child: Text("Error loading introductions"));
          }
        },
      ),
    );
  }
}
