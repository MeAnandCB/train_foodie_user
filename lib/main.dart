import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:train_foodie_user/app_config/app_config_controller.dart';
import 'package:train_foodie_user/box/box.dart';
import 'package:train_foodie_user/model/food_model/food_model.dart';
import 'package:train_foodie_user/model/history_model/history_model.dart';
import 'package:train_foodie_user/model/train_model/train_data_model.dart';
import 'package:train_foodie_user/common_provider/commom_controller.dart';

import 'package:train_foodie_user/presentation/splash_screen/splash_screen.dart';
import 'package:train_foodie_user/presentation/user/user_login_screen/controller/user_login_screen_controller.dart';
import 'package:train_foodie_user/presentation/user/user_signup_screen/controller/user_signup_screen_controller.dart';
import 'package:train_foodie_user/presentation/vendor_screen/vendor_login_screen/controller/vendor_login_screen_controller.dart';
import 'package:train_foodie_user/presentation/vendor_screen/vendor_signup_screen/controller/vendor_signup_screen_controller.dart';

Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(HistoryModelAdapter());
  Hive.registerAdapter(FoodModelAdapter());
  historyBox = await Hive.openBox<HistoryModel>('localdb');
  trainBox = await Hive.openBox<TraindetailsModel>('trainData');
  foodBox = await Hive.openBox<FoodModel>('Data');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CommonController(),
        ),
        ChangeNotifierProvider(
          create: (context) => BusOwnerLoginScreenController(),
        ),
        ChangeNotifierProvider(
          create: (context) => PassengerLoginScreenController(),
        ),
        ChangeNotifierProvider(
          create: (context) => PassengerRegistrationScreenController(),
        ),
        ChangeNotifierProvider(
          create: (context) => VendorRegistrationScreenController(),
        ),
      ],
      child: MaterialApp(
        navigatorKey: AppConfigController.navigatorState,
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
