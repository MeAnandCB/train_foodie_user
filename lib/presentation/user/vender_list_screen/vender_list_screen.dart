import 'package:flutter/material.dart';
import 'package:train_foodie_user/core/database.dart';

import 'package:train_foodie_user/presentation/user/food_screen/view/food_screen.dart';

class venderListScreen extends StatelessWidget {
  const venderListScreen({super.key, required this.pnr});
  final String pnr;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Image.asset(
                "assets/r.jpg",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Find the best foods",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FoodScreen(
                              vindex: index,
                              mylist: DatabaseData.vendorData,
                              pnr: pnr,
                            ),
                          ),
                        );
                      },
                      child: ListTile(
                        leading: Container(
                          width: 80,
                          child: Image.network(
                            DatabaseData.vendorData[index]['hotelImage'],
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(
                          DatabaseData.vendorData[index]['hotelName'],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              DatabaseData.vendorData[index]
                                  ['hotelDescription'],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      DatabaseData.vendorData[index]
                                          ['location'],
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 15,
                                    ),
                                    Text(
                                      DatabaseData.vendorData[index]['rating']
                                          .toString(),
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      height: 10,
                    ),
                itemCount: DatabaseData.vendorData.length),
          ],
        ),
      ),
    );
  }
}
