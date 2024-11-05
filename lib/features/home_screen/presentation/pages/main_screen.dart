import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:himalaya_application/core/components/navbar/footer_navbar.dart';
import 'package:himalaya_application/features/home_screen/presentation/pages/home_screen.dart';
import 'package:himalaya_application/features/introduction_screen/presentation/blocs/bloc.introduction.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
    return Scaffold(
      body: BlocBuilder<IntroductionBloc, IntroductionState>(
        builder: (context, state) {
          return const CustomizedBottomNavigationBar(items: [
            NavBarItem(
                title: 'Home', icon: Icons.home, component: HomeScreen()),
            NavBarItem(
              title: 'Ujian',
              icon: Icons.business,
              component: Text(
                textAlign: TextAlign.center,
                'Feature is under maintenance',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            NavBarItem(
              title: 'School',
              icon: Icons.school,
              component: Text(
                textAlign: TextAlign.center,
                'Feature is under maintenance',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            NavBarItem(
              title: 'Account',
              icon: Icons.account_circle,
              component: Text(
                textAlign: TextAlign.center,
                'Feature is under maintenance',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ]);
        },
      ),
    );
  }
}
