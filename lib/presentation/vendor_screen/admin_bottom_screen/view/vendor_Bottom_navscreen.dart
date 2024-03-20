import 'package:flutter/material.dart';
import 'package:train_foodie_user/presentation/vendor_screen/admin_delivery_screen/view/admin_delivery_screen.dart';
import 'package:train_foodie_user/presentation/vendor_screen/admin_home_screen/view/admin_home_screen.dart';
import 'package:train_foodie_user/presentation/vendor_screen/train_screen/train.dart';

class AdminBottomNavScreen extends StatefulWidget {
  const AdminBottomNavScreen({super.key});

  @override
  State<AdminBottomNavScreen> createState() => _AdminBottomNavScreenState();
}

class _AdminBottomNavScreenState extends State<AdminBottomNavScreen> {
  int seletedIndex = 0;
  List<Widget> screens = [
    AdminHomeScreen(),
    AdminDeliveryScreen(),
    Traindetails(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[seletedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: seletedIndex,
          onTap: (value) {
            seletedIndex = value;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.all_inbox_outlined), label: "Home"),
            // BottomNavigationBarItem(
            //     icon: Icon(Icons.food_bank_outlined), label: "Hotels"),
            BottomNavigationBarItem(
                icon: Icon(Icons.delivery_dining), label: "Delivery"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
          ]),
    );
  }
}
