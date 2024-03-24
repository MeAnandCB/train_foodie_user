import 'package:flutter/material.dart';

class CommonController extends ChangeNotifier {
  bool orderPresent = false;
  showDeliverySuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Delivery Successful'),
          content: Text('Thank you for choosing our service. Enjoy your food!'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                orderPresent = false;
                notifyListeners();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
