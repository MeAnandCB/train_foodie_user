import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:train_foodie_user/box/box.dart';
import 'package:train_foodie_user/core/colors.dart';
import 'package:train_foodie_user/model/history_model/history_model.dart';
import 'package:train_foodie_user/presentation/user/bottom_nav_screen/view/bottom_nav_screeb.dart';

import '../../../common_provider/commom_controller.dart';

class PaymentMethods extends StatefulWidget {
  PaymentMethods(
      {super.key,
      required this.image,
      required this.amount,
      required this.name,
      required this.inx,
      required this.location,
      required this.pnr});
  final String image;
  final String name;
  final String amount;
  final int inx;
  final String location;
  final String pnr;

  @override
  _PaymentMethodsState createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  TextEditingController _cardNumberController = TextEditingController();
  TextEditingController _expiryDateController = TextEditingController();
  TextEditingController _cvvController = TextEditingController();
  TextEditingController _upiIdController = TextEditingController();
  bool card = false;
  bool upi = false;
  bool cod = false;

  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CommonController>(context);
    var value = double.parse(widget.amount);
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Payment'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                card == false
                    ? Hero(
                        tag: 'valuecheck',
                        child: InkWell(
                          onTap: () {
                            card = !card;
                            setState(() {});
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all()),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.credit_card),
                                    SizedBox(width: 20),
                                    Text("Card Payment")
                                  ],
                                ),
                                SizedBox(
                                    width: 100,
                                    child: Image.asset("assets/11.png"))
                              ],
                            ),
                          ),
                        ),
                      )
                    : Hero(
                        tag: 'valuecheck',
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all()),
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                TextField(
                                  controller: _cardNumberController,
                                  decoration: InputDecoration(
                                    labelText: 'Card Number',
                                  ),
                                ),
                                SizedBox(height: 12.0),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: TextField(
                                        controller: _expiryDateController,
                                        decoration: InputDecoration(
                                          labelText: 'Expiry Date',
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 16.0),
                                    Expanded(
                                      flex: 1,
                                      child: TextField(
                                        controller: _cvvController,
                                        decoration: InputDecoration(
                                          labelText: 'CVV',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 12.0),
                                TextField(
                                  controller: _upiIdController,
                                  decoration: InputDecoration(
                                    labelText: 'UPI ID',
                                  ),
                                ),
                                SizedBox(height: 15),
                                Row(
                                  children: [
                                    Expanded(
                                      child: InkWell(
                                        onTap: () {
                                          card = !card;
                                          setState(() {});
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color:
                                                      ColorConstant.hyperGrey)),
                                          height: 50,
                                          child: Center(
                                            child: Text(
                                              "Cancel",
                                              style: TextStyle(
                                                  color:
                                                      ColorConstant.mainBlack),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    Expanded(
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            var totalAmount = quantity * value;
                                            print(totalAmount);
                                            historyBox.put(
                                                'key ${generateRandomNumber()}',
                                                HistoryModel(
                                                    name: widget.name,
                                                    location: widget.location,
                                                    amount:
                                                        totalAmount.toString(),
                                                    date: DateTime.now(),
                                                    image: widget.image,
                                                    pnr: widget.pnr));
                                          });
                                          Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    UserBottomNavScreen(),
                                              ),
                                              (route) => false);
                                          provider.orderPresent = true;
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content:
                                                  Text('Payment processed!'),
                                            ),
                                          );
                                          card = !card;
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color:
                                                  ColorConstant.primaryGreen),
                                          height: 50,
                                          child: Center(
                                            child: Text(
                                              "Pay",
                                              style: TextStyle(
                                                  color:
                                                      ColorConstant.mainWhite),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  child: Image.asset("assets/aaa.png"),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    upi = !upi;
                    setState(() {});
                  },
                  child: upi == false
                      ? Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all()),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.password),
                                  SizedBox(width: 20),
                                  Text("UPI")
                                ],
                              ),
                              SizedBox(
                                  width: 100,
                                  height: 20,
                                  child: Image.network(
                                      "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/UPI-Logo-vector.svg/1280px-UPI-Logo-vector.svg.png"))
                            ],
                          ),
                        )
                      : Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all()),
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                TextField(
                                  controller: _cardNumberController,
                                  decoration: InputDecoration(
                                    labelText: 'Enter your UPI (sample@ybl)',
                                  ),
                                ),
                                SizedBox(height: 12.0),
                                SizedBox(height: 15),
                                Row(
                                  children: [
                                    Expanded(
                                      child: InkWell(
                                        onTap: () {
                                          upi = !upi;
                                          setState(() {});
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color:
                                                      ColorConstant.hyperGrey)),
                                          height: 50,
                                          child: Center(
                                            child: Text(
                                              "Cancel",
                                              style: TextStyle(
                                                  color:
                                                      ColorConstant.mainBlack),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    Expanded(
                                      child: InkWell(
                                        onTap: () {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content:
                                                  Text('Payment processed!'),
                                            ),
                                          );
                                          upi = !upi;
                                          setState(() {});
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color:
                                                  ColorConstant.primaryGreen),
                                          height: 50,
                                          child: Center(
                                            child: Text(
                                              "Pay",
                                              style: TextStyle(
                                                  color:
                                                      ColorConstant.mainWhite),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    cod = !cod;
                    setState(() {});
                  },
                  child: cod == false
                      ? Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all()),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.payments),
                                  SizedBox(width: 20),
                                  Text("COD")
                                ],
                              ),
                            ],
                          ),
                        )
                      : Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all()),
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                SizedBox(height: 15),
                                Row(
                                  children: [
                                    Expanded(
                                      child: InkWell(
                                        onTap: () {
                                          cod = !cod;
                                          setState(() {});
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color:
                                                      ColorConstant.hyperGrey)),
                                          height: 50,
                                          child: Center(
                                            child: Text(
                                              "Cancel",
                                              style: TextStyle(
                                                  color:
                                                      ColorConstant.mainBlack),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    Expanded(
                                      child: InkWell(
                                        onTap: () {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content:
                                                  Text('Payment processed!'),
                                            ),
                                          );
                                          cod = !cod;
                                          setState(() {});
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color:
                                                  ColorConstant.primaryGreen),
                                          height: 50,
                                          child: Center(
                                            child: Text(
                                              "Conform",
                                              style: TextStyle(
                                                  color:
                                                      ColorConstant.mainWhite),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                ),
              ],
            ),
          ),
        ));
  }

  @override
  void dispose() {
    _cardNumberController.dispose();
    _expiryDateController.dispose();
    _cvvController.dispose();
    _upiIdController.dispose();
    super.dispose();
  }

  int generateRandomNumber() {
    int min = 0;
    int max = 100;
    final Random random = Random();
    return min + random.nextInt(max - min + 1);
  }
}
