import 'package:flutter/material.dart';
import 'package:train_foodie_user/presentation/vendor_screen/admin_home_screen/view/tabs/users_tab.dart';
import 'package:train_foodie_user/presentation/vendor_screen/admin_home_screen/view/tabs/vendors_tab.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: "venders",
              ),
              Tab(
                text: "Users",
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          VendersTab(),
          UsersTab(),
        ]),
      ),
    );
  }
}
