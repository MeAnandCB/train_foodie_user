import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:train_foodie_user/core/app_utils/app_utils.dart';

import 'package:train_foodie_user/presentation/user/user_login_screen/view/user_login_screen.dart';
import 'package:train_foodie_user/presentation/user/user_signup_screen/controller/user_signup_screen_controller.dart';
import 'package:train_foodie_user/presentation/vendor_screen/vendor_login_screen/view/vendor_login_screen.dart';
import 'package:train_foodie_user/presentation/vendor_screen/vendor_signup_screen/controller/vendor_signup_screen_controller.dart';

class VendorSignupScreen extends StatefulWidget {
  @override
  _VendorSignupScreenState createState() => _VendorSignupScreenState();
}

class _VendorSignupScreenState extends State<VendorSignupScreen> {
  final nameController = TextEditingController();
  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();
  final passwordController = TextEditingController();

  //form keys
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final regScreenData =
        Provider.of<VendorRegistrationScreenController>(context);
    return new Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                          child: Text(
                            'Signup',
                            style: TextStyle(
                                fontSize: 80.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(260.0, 125.0, 0.0, 0.0),
                          child: Text(
                            '.',
                            style: TextStyle(
                                fontSize: 80.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      padding:
                          EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                      child: Form(
                        key: formKey,
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(
                                  labelText: 'Name',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                  // hintText: 'EMAIL',
                                  // hintStyle: ,
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.green))),
                              controller: nameController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your name';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 10.0),
                            TextFormField(
                              decoration: InputDecoration(
                                  labelText: 'User Name',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.green))),
                              controller: userNameController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your User name';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 10.0),
                            TextFormField(
                              decoration: InputDecoration(
                                  labelText: 'Email',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.green))),
                              obscureText: true,
                              controller: emailController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your email address';
                                } else if (!RegExp(
                                        r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                    .hasMatch(value)) {
                                  return 'Please enter a valid email address';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 10.0),
                            TextFormField(
                              decoration: InputDecoration(
                                  labelText: 'Phone number',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.green))),
                              obscureText: true,
                              controller: phoneController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your phone number';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 10.0),
                            // TextFormField(
                            //   decoration: InputDecoration(
                            //       labelText: 'Gender',
                            //       labelStyle: TextStyle(
                            //           fontFamily: 'Montserrat',
                            //           fontWeight: FontWeight.bold,
                            //           color: Colors.grey),
                            //       focusedBorder: UnderlineInputBorder(
                            //           borderSide:
                            //               BorderSide(color: Colors.green))),
                            // ),
                            // SizedBox(height: 10.0),
                            TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.green)),
                                ),
                                controller: passwordController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter a password';
                                  } else if (value.length < 6) {
                                    return 'Password must be at least 6 characters long';
                                  }
                                  return null;
                                }),
                            SizedBox(height: 20.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Already have an Account? "),
                                SizedBox(width: 5),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              UserLoginScreen(),
                                        ));
                                  },
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        color: const Color.fromARGB(
                                            255, 43, 97, 45)),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 20.0),
                            regScreenData.isLoading
                                ? Center(
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
                                        onTap: () {
                                          // Navigator.pushReplacement(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //       builder: (context) =>
                                          //           UserLoginScreen(),
                                          //     ));
                                          // Validate all the form fields
                                          if (formKey.currentState!
                                              .validate()) {
                                            Provider.of<VendorRegistrationScreenController>(
                                                    context,
                                                    listen: false)
                                                .onPasssengerLogin(
                                                    userName:
                                                        userNameController.text,
                                                    password:
                                                        passwordController.text,
                                                    emailAddress:
                                                        emailController.text,
                                                    // address:
                                                    //     addressController.text,
                                                    phone: phoneController.text,
                                                    name: nameController.text)
                                                .then((value) {
                                              if (value) {
                                                AppUtils.oneTimeSnackBar(
                                                  "Registration Success",
                                                  context: context,
                                                  bgColor: Colors.green,
                                                );

                                                Navigator.pushReplacement(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          VendorLoginScreen(),
                                                    ));
                                              }
                                            });
                                          }
                                        },
                                        child: Center(
                                          child: Text(
                                            'SIGNUP',
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
                        ),
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
          ),
        ));
  }
}
