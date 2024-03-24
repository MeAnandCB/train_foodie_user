import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:train_foodie_user/repository/api/user/user_signup_screen/service/user_signup_screen_service.dart';
import 'package:train_foodie_user/repository/api/vendor/vendor_signup_screen/service/vendor_signup_screen_service.dart';

class VendorRegistrationScreenController with ChangeNotifier {
  // bool isLogged = false;
  bool isLoading = false;

  // bool isPasswordVisible = false;

  // to Fetch the Course demo videos

  Future<bool> onPasssengerLogin({
    required String userName,
    required String password,
    required String emailAddress,
    // required String address,
    required String phone,
    required String name,
  }) async {
    isLoading = true;
    notifyListeners();

    try {
      // need to update values from  user input
      final fetchedData =
          await VendorRegistrationScreenService().onRegisteration(body: {
        "name": name,
        "phone": phone,
        "address": "",
        "email_address": emailAddress,
        "username": userName,
        "password": password,
      });
      if (fetchedData.error != true) {
        isLoading = false;
        notifyListeners();
        return true;
      } else {
        isLoading = false;
        notifyListeners();
        return false;
      }
    } catch (e) {
      isLoading = false;
      notifyListeners();
      return false;
    }
  }
}
