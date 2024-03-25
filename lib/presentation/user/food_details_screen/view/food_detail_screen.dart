import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:train_foodie_user/presentation/user/payment_methode__screen/payment_method.dart';

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
  final String amount;
  final int inx;
  final String location;
  final String pnr;

  @override
  State<FoodDetailScreen> createState() => _FoodDetailScreenState();
}

class _FoodDetailScreenState extends State<FoodDetailScreen> {
  int quantity = 1;

  void _incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void _decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var value = double.parse(widget.amount);
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
                              '$quantity',
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
                              "${(quantity * value).toStringAsFixed(2)}",
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
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PaymentMethods(
                        image: widget.image,
                        amount: widget.amount,
                        name: widget.name,
                        inx: widget.inx,
                        location: widget.location,
                        pnr: widget.pnr,
                      )));
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
}
