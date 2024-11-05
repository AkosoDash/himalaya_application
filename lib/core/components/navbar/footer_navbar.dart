import 'package:flutter/material.dart';

void main() {
  runApp(const CustomizedBottomNavigationBarApp());
}

class CustomizedBottomNavigationBarApp extends StatelessWidget {
  const CustomizedBottomNavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CustomizedBottomNavigationBar(
        items: [
          NavBarItem(
            title: 'Home',
            icon: Icons.home,
            component: Text(
              'Index 0: Home',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          NavBarItem(
            title: 'Business',
            icon: Icons.business,
            component: Text(
              'Index 1: Business',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          NavBarItem(
            title: 'School',
            icon: Icons.school,
            component: Text(
              'Index 2: School',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          NavBarItem(
            title: 'Account',
            icon: Icons.account_circle,
            component: Text(
              'Index 3: Account',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class NavBarItem {
  final String title;
  final IconData icon;
  final Widget component;

  const NavBarItem({
    required this.title,
    required this.icon,
    required this.component,
  });
}

class CustomizedBottomNavigationBar extends StatefulWidget {
  final List<NavBarItem> items;

  const CustomizedBottomNavigationBar({super.key, required this.items});

  @override
  State<CustomizedBottomNavigationBar> createState() =>
      CustomizedBottomNavigationBarState();
}

class CustomizedBottomNavigationBarState
    extends State<CustomizedBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
      ),
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(color: Color(0xFF06AAD1)),
          child: Center(
            child: widget.items[_selectedIndex].component,
          ),
        ),
        bottomNavigationBar: Container(
          height: 84,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF3695BF),
                Color(0xFF4BB6E6),
              ],
            ),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16)),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                spreadRadius: -4.0,
                blurRadius: 4.0,
              ),
            ],
          ),
          child: BottomNavigationBar(
            items: widget.items
                .map(
                  (item) => BottomNavigationBarItem(
                      icon: Icon(item.icon),
                      label: item.title,
                      backgroundColor: Colors.transparent),
                )
                .toList(),
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white70,
            showUnselectedLabels: true,
            onTap: _onItemTapped,
            elevation: 0,
          ),
        ),
      ),
    );
  }
}
