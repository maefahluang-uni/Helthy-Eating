import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Home.dart';
import 'package:flutter_application_1/pages/Suggest.dart';
import 'package:flutter_application_1/pages/plan.dart';
import 'package:flutter_application_1/pages/profile.dart';
import 'package:page_transition/page_transition.dart';

class BottomBar extends StatelessWidget {
  final int currentIndex;

  const BottomBar({Key? key, required this.currentIndex}) : super(key: key);

  void _onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        // Home
        Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.fade,
            child: HomePage(),
          ),
        );
        break;
      case 1:
        // Project
        Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.fade,
            child: SuggestMealPage(),
          ),
        );
        break;
      case 2:
        // Profile
        Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.fade,
            child: const PlanPage(),
          ),
        );
        break;
      case 3:
        // Wallet
        Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.fade,
            child: ProfilePage(),
          ),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Color.fromARGB(255, 0, 0, 0)),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon:
              Icon(Icons.restaurant_menu, color: Color.fromARGB(255, 0, 0, 0)),
          label: 'Suggest Meal',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today, color: Color.fromARGB(255, 0, 0, 0)),
          label: 'My Plan',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: Color.fromARGB(255, 0, 0, 0)),
          label: 'Profile',
        ),
      ],
      selectedItemColor: Color.fromARGB(255, 0, 0, 0),
      currentIndex: currentIndex,
      onTap: (index) => _onItemTapped(context, index),
    );
  }
}
