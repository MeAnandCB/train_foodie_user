import 'package:flutter/material.dart';
import 'package:train_foodie_user/presentation/get_started_screen/get_started_screen.dart';

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
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => GetStartedScreen(),
        ),
      );
    });
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
