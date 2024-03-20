import 'package:flutter/material.dart';
import 'package:train_foodie_user/core/database.dart';

class UserssList extends StatelessWidget {
  const UserssList({super.key, required this.inx});
  final int inx;

  @override
  Widget build(BuildContext context) {
    final data = DatabaseData.usernames[inx];
    return ListTile(
      title: Text(data['name']),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Email: ${data['email']}'),
          Text('Gender: ${data['gender']}'),
        ],
      ),
    );
  }
}
