import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:train_foodie_user/core/alert_popup.dart';
import 'package:train_foodie_user/presentation/get_started_screen/get_started_screen.dart';

class AdminProfileScreen extends StatefulWidget {
  const AdminProfileScreen({super.key});

  @override
  State<AdminProfileScreen> createState() => _AdminProfileScreenState();
}

class _AdminProfileScreenState extends State<AdminProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  showDialog(
                    //the return value will be from "Yes" or "No" options
                    context: context,
                    builder: (context) => CustomAlertPopup(
                        title: 'Do you want to LogOut?',
                        onyesPressed: () async {
                          // Navigator.pushReplacement(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => GetStartedScreen(),
                          //   ),
                          // );
                          final prefs = await SharedPreferences.getInstance();
                          prefs.clear();
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => GetStartedScreen(),
                              ),
                              (route) => false);
                        }),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all()),
                  child: Row(
                    children: [
                      Icon(Icons.logout),
                      SizedBox(width: 20),
                      Text("LogOut")
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
