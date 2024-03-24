import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:train_foodie_user/presentation/user/bottom_nav_screen/view/bottom_nav_screeb.dart';

import 'package:train_foodie_user/presentation/user/user_signup_screen/view/user_signup_screen.dart';
import 'package:train_foodie_user/presentation/vendor_screen/admin_bottom_screen/view/vendor_Bottom_navscreen.dart';
import 'package:train_foodie_user/presentation/vendor_screen/vendor_login_screen/controller/vendor_login_screen_controller.dart';

class VendorLoginScreen extends StatefulWidget {
  @override
  _VendorLoginScreenState createState() => _VendorLoginScreenState();
}

class _VendorLoginScreenState extends State<VendorLoginScreen> {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final userFormKey = GlobalKey<FormState>();
  final passwordFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final loginPageState = Provider.of<BusOwnerLoginScreenController>(context);

    return new Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                        child: Text(
                          'LogIN',
                          style: TextStyle(
                              fontSize: 60.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    padding:
                        EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                    child: Column(
                      children: <Widget>[
                        Form(
                          key: userFormKey,
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: 'User Name',
                                labelStyle: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                                // hintText: 'EMAIL',
                                // hintStyle: ,
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.green))),
                            controller: emailController,
                            validator: (value) {
                              if (emailController.text.isNotEmpty) {
                                return null;
                              } else {
                                return "Enter a valid user name";
                              }
                            },
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Form(
                          key: passwordFormKey,
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: 'PASSWORD ',
                                labelStyle: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.green))),
                            obscureText: true,
                            validator: (value) {
                              if (passController.text.isNotEmpty) {
                                return null;
                              } else {
                                return "Enter your password";
                              }
                            },
                            controller: passController,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.end,
                        //   children: [
                        //     Text("Don't have an Account? "),
                        //     SizedBox(width: 5),
                        //     InkWell(
                        //       onTap: () {
                        //         Navigator.pushReplacement(
                        //             context,
                        //             MaterialPageRoute(
                        //               builder: (context) => UserSignupScreen(),
                        //             ));
                        //       },
                        //       child: Text(
                        //         "Register Now",
                        //         style: TextStyle(
                        //             color:
                        //                 const Color.fromARGB(255, 43, 97, 45)),
                        //       ),
                        //     )
                        //   ],
                        // ),
                        SizedBox(height: 30.0),
                        loginPageState.isLoading
                            ? const Center(
                                child: CircularProgressIndicator(),
                              )
                            : Container(
                                height: 40.0,
                                child: Material(
                                  borderRadius: BorderRadius.circular(20.0),
                                  shadowColor: Colors.greenAccent,
                                  color: Colors.green,
                                  elevation: 7.0,
                                  child: GestureDetector(
                                    onTap:
                                        // () {
                                        //   Navigator.pushReplacement(
                                        //       context,
                                        //       MaterialPageRoute(
                                        //         builder: (context) =>
                                        //             AdminBottomNavScreen(),
                                        //       ));
                                        // },
                                        () {
                                      if (userFormKey.currentState!
                                              .validate() &&
                                          passwordFormKey.currentState!
                                              .validate()) {
                                        Provider.of<BusOwnerLoginScreenController>(
                                                context,
                                                listen: false)
                                            .onLogin(
                                          userName: emailController.text,
                                          password: passController.text,
                                        )
                                            .then((value) {
                                          if (value) {
                                            Navigator.pushAndRemoveUntil(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const AdminBottomNavScreen(),
                                                ),
                                                (route) => false);
                                          }
                                        });
                                      }
                                    },
                                    child: Center(
                                      child: Text(
                                        'Login',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Montserrat'),
                                      ),
                                    ),
                                  ),
                                )),
                        SizedBox(height: 20.0),
                        // Container(
                        //   height: 40.0,
                        //   color: Colors.transparent,
                        //   child: Container(
                        //     decoration: BoxDecoration(
                        //         border: Border.all(
                        //             color: Colors.black,
                        //             style: BorderStyle.solid,
                        //             width: 1.0),
                        //         color: Colors.transparent,
                        //         borderRadius: BorderRadius.circular(20.0)),
                        //     child: InkWell(
                        //       onTap: () {
                        //         Navigator.of(context).pop();
                        //       },
                        //       child: Center(
                        //         child: Text('Go Back',
                        //             style: TextStyle(
                        //                 fontWeight: FontWeight.bold,
                        //                 fontFamily: 'Montserrat')),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    )),
                // SizedBox(height: 15.0),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: <Widget>[
                //     Text(
                //       'New to Spotify?',
                //       style: TextStyle(
                //         fontFamily: 'Montserrat',
                //       ),
                //     ),
                //     SizedBox(width: 5.0),
                //     InkWell(
                //       child: Text('Register',
                //           style: TextStyle(
                //               color: Colors.green,
                //               fontFamily: 'Montserrat',
                //               fontWeight: FontWeight.bold,
                //               decoration: TextDecoration.underline)),
                //     )
                //   ],
                // )
              ]),
        ));
  }
}
