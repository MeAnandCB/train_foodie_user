import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:train_foodie_user/box/box.dart';
import 'package:train_foodie_user/model/history_model.dart';
import 'package:train_foodie_user/presentation/bottom_nav_screen/view/bottom_nav_screeb.dart';
import 'package:train_foodie_user/presentation/common_provider/commom_controller.dart';

Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(HistoryModelAdapter());
  historyBox = await Hive.openBox<HistoryModel>('localdb');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CommonController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomNavScreen(),
      ),
    );
  }
}
