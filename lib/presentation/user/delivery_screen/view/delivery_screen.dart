import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common_provider/commom_controller.dart';

class DeliveryScreen extends StatefulWidget {
  const DeliveryScreen({super.key});

  @override
  State<DeliveryScreen> createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  int _currentStep = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    // Start the timer for automatic navigation
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      setState(() {
        if (_currentStep < 3) {
          _currentStep += 1;
        } else {
          // If the last step is reached, cancel the timer
          _timer?.cancel();
          // Show delivery successful popup
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
            await Provider.of<CommonController>(context, listen: false)
                .showDeliverySuccessDialog(context);
          });
        }
      });
    });
  }

  @override
  void dispose() {
    // Dispose the timer when the widget is disposed
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CommonController>(context);
    List<String> stationNames = [
      'Kozhikode',
      'Thrissur',
      'Ernakulam Town',
      'Ernakulam Junction'
    ];
    List<String> deliveryStatus = [
      'Your order has been received. Please wait, your food is being prepared.',
      'Your food is now being packed and prepared for delivery.',
      'Your food is on its way! It will arrive soon.',
      'Your food has been successfully delivered. Enjoy your meal!'
    ];
    return Scaffold(
      appBar: AppBar(),
      body: provider.orderPresent
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 180,
                    child: Image.asset(
                      "assets/image-removebg-preview (2).png",
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Stepper(
                    type: StepperType.vertical,
                    //  currentStep: _currentStep,//
                    steps: List<Step>.generate(
                      stationNames.length,
                      (index) {
                        return Step(
                          title: Text(stationNames[index]),
                          content: Text(deliveryStatus[index]),
                          isActive: _currentStep >= index,
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          : Center(
              child: Text('No order currently present.'),
            ),
    );
  }
}
