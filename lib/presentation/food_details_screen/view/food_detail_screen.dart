import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:train_foodie_user/box/box.dart';
import 'package:train_foodie_user/model/history_model.dart';
import 'package:train_foodie_user/presentation/bottom_nav_screen/view/bottom_nav_screeb.dart';
import 'package:train_foodie_user/presentation/common_provider/commom_controller.dart';

class FoodDetailScreen extends StatefulWidget {
  const FoodDetailScreen(
      {super.key,
      required this.image,
      required this.amount,
      required this.name,
      required this.inx,
      required this.location,
      required this.pnr});
  final String image;
  final String name;
  final int amount;
  final int inx;
  final String location;
  final String pnr;

  @override
  State<FoodDetailScreen> createState() => _FoodDetailScreenState();
}

class _FoodDetailScreenState extends State<FoodDetailScreen> {
  int _quantity = 1;

  void _incrementQuantity() {
    setState(() {
      _quantity++;
    });
  }

  void _decrementQuantity() {
    if (_quantity > 1) {
      setState(() {
        _quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CommonController>(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber,
                  image: DecorationImage(
                      image: NetworkImage(
                        widget.image,
                      ),
                      fit: BoxFit.cover)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(widget.name),
                    Text(
                      widget.amount.toString(),
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                ),
                Flexible(
                  flex: 1,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Quantity:',
                              style: TextStyle(fontSize: 14),
                            ),
                            IconButton(
                              icon: Icon(Icons.remove),
                              onPressed: _decrementQuantity,
                              iconSize: 28,
                            ),
                            SizedBox(width: 10),
                            Text(
                              '$_quantity',
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 10),
                            IconButton(
                              padding: EdgeInsets.only(right: 0),
                              icon: Icon(Icons.add),
                              onPressed: _incrementQuantity,
                              iconSize: 28,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Grand Total :',
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "${widget.amount * _quantity}",
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ]),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          setState(() {
            var totalAmount = widget.amount * _quantity;
            print(totalAmount);
            historyBox.put(
                'key ${generateRandomNumber()}',
                HistoryModel(
                    name: widget.name,
                    location: widget.location,
                    amount: totalAmount.toString(),
                    date: DateTime.now(),
                    image: widget.image,
                    pnr: widget.pnr));
          });
          provider.orderPresent = true;

          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BottomNavScreen(),
              ));
        },
        child: Container(
          height: 60,
          color: Colors.amber,
          child: Center(
            child: Text("Order Now"),
          ),
        ),
      ),
    );
  }

  int generateRandomNumber() {
    int min = 0;
    int max = 100;
    final Random random = Random();
    return min + random.nextInt(max - min + 1);
  }
}
