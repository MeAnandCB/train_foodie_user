import 'package:flutter/material.dart';
import 'package:train_foodie_user/presentation/user/delivery_screen/view/delivery_screen.dart';
import 'package:train_foodie_user/presentation/user/history_screen/view/history_screen.dart';
import 'package:train_foodie_user/presentation/user/home_food_screen/view/home_food_screen.dart';
import 'package:train_foodie_user/presentation/user/profile_screen/view/profile_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  List _screens = [
    HomeFoodScreen(),
    DeliveryScreen(),
    HistoryScreen(),
    ProfileScreen(),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.fastfood,
                ),
                label: 'Food'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.local_shipping,
                ),
                label: 'Delivery'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.history,
                ),
                label: 'History'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: 'Profile'),
          ]),
    );
  }
}
