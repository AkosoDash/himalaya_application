import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:himalaya_application/features/introduction_screen/data/repositories/repository.introduction_implementation.dart';
import 'package:himalaya_application/features/introduction_screen/domain/repositories/repository.introduction.dart';
import 'package:himalaya_application/features/introduction_screen/domain/usecases/get_introduction.dart';
import 'package:himalaya_application/features/introduction_screen/presentation/blocs/bloc.introduction.dart';
import 'package:himalaya_application/features/splash_screen/presentation/pages/splash_screen.dart';

void main() {
  final IntroductionRepository repository =
      IntroductionRepositoryImplementation(); // Create your repository instance
  final getIntroductionUseCase =
      GetIntroduction(repository); // Create GetIntroduction with the repository

  runApp(
    BlocProvider(
      create: (context) =>
          IntroductionBloc(getIntroductionUseCase), // Pass your use case
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Poppins",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(), // Entry point of your app
    );
  }
}
