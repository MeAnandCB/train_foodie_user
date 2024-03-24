import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:train_foodie_user/repository/api/vendor/admin_login_screen/model/bus_owner_login_res_model.dart';
import 'package:train_foodie_user/repository/api/vendor/admin_login_screen/services/bus_owner_login_service.dart';

import '../../../../app_config/app_config.dart';

class BusOwnerLoginScreenController with ChangeNotifier {
  bool isLogged = false;
  bool isLoading = false;
  late SharedPreferences sharedPreferences;
  BusOwnerLoginResModel? loginData;
  bool isPasswordVisible = false;

  Future<bool> onLogin(
      {required String userName, required String password}) async {
    sharedPreferences = await SharedPreferences.getInstance();
    isLoading = true;
    notifyListeners();
    try {
      final fetchedData = await BusOwnerLoginService().onLogin(body: {
        "username": userName,
        "password": password,
      });
      if (fetchedData.error != true) {
        loginData = fetchedData.data;

        if (loginData != null) {
          Map<String, dynamic> sharedData = {
            'access': loginData!.token,
            "userType": "admin"
          };
          await sharedPreferences.setString(
              AppConfig.LOGIN_DATA, jsonEncode(sharedData));
        }
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
