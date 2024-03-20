import 'package:flutter/material.dart';
import 'package:train_foodie_user/core/database.dart';

class vendorFoodScreen extends StatelessWidget {
  const vendorFoodScreen({super.key, required this.vendorIndex});
  final int vendorIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
          itemCount: DatabaseData.foodDummyData.length,
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber,
                  image: DecorationImage(
                      image: NetworkImage(
                        DatabaseData.foodDummyData[vendorIndex]['image'][index],
                      ),
                      fit: BoxFit.cover),
                ),
              )),
    );
  }
}
