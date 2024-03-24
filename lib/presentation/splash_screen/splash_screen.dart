import 'dart:async';

import 'package:flutter/material.dart';
import 'package:train_foodie_user/core/app_utils/app_utils.dart';
import 'package:train_foodie_user/presentation/get_started_screen/get_started_screen.dart';
import 'package:train_foodie_user/presentation/user/bottom_nav_screen/view/bottom_nav_screeb.dart';
import 'package:train_foodie_user/presentation/vendor_screen/admin_bottom_screen/view/vendor_Bottom_navscreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToGetStarted();
  }

  void navigateToGetStarted() {
    // Future.delayed(Duration(seconds: 2), () {
    //   Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => GetStartedScreen(),
    //     ),
    //   );
    // });

    Timer(const Duration(seconds: 2), () async {
      final token = await AppUtils.getAccessKey();

      if (token != null && token.isNotEmpty) {
        final userType = await AppUtils.getUserType();

        if (userType == "user") {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => UserBottomNavScreen(),
              ));
        } else if (userType == "admin") {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => AdminBottomNavScreen(),
              ));
        } else {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => GetStartedScreen(),
              ));
        }
      } else {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => GetStartedScreen(),
            ));
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 250, width: 250, child: Image.asset("assets/logo.png")),
            CircularProgressIndicator(), // Placeholder for loading indicator
          ],
        ),
      ),
    );
  }
}
