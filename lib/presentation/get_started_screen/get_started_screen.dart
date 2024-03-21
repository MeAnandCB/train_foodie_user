import 'package:flutter/material.dart';
import 'package:train_foodie_user/presentation/user/bottom_nav_screen/view/bottom_nav_screeb.dart';
import 'package:train_foodie_user/presentation/user/login_screen/view/login_screen.dart';
import 'package:train_foodie_user/presentation/vendor_screen/admin_bottom_screen/view/vendor_Bottom_navscreen.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AdminBottomNavScreen(),
                  ),
                );
              },
              child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber,
                  ),
                  child: Center(
                    child: Text("Go to Admin login"),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserBottomNavScreen(),
                  ),
                );
              },
              child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.amber,
                      )),
                  child: Center(
                    child: Text("Go to User login"),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
