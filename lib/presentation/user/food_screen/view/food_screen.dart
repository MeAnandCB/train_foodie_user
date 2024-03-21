import 'package:flutter/material.dart';
import 'package:train_foodie_user/presentation/user/food_details_screen/view/food_detail_screen.dart';

class FoodScreen extends StatelessWidget {
  const FoodScreen(
      {super.key,
      required this.mylist,
      required this.vindex,
      required this.pnr});
  final List mylist;
  final int vindex;
  final String pnr;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Find your Food"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(
                      mylist[vindex]['hotelImage'],
                    ),
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(height: 20),
            Text(
              mylist[vindex]['hotelDescription'],
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Expanded(
                child: Container(
              child: GridView.builder(
                itemCount: mylist[vindex]['images'].length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 220,
                    crossAxisSpacing: 20),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoodDetailScreen(
                          image: mylist[vindex]['images'][index]
                                  ['product_images'] ??
                              "",
                          amount: mylist[vindex]['images'][index]
                                  ['product_price'] ??
                              "",
                          name: mylist[vindex]['images'][index]
                                  ['product_name'] ??
                              "",
                          inx: index,
                          location: mylist[vindex]['location'] ?? "",
                          pnr: pnr,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(
                                  mylist[vindex]['images'][index]
                                          ['product_name'] ??
                                      "",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            mylist[vindex]['images'][index]['product_name'] ??
                                "",
                            maxLines: 1,
                            style: TextStyle(fontSize: 14),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                mylist[vindex]['images'][index]
                                        ['product_price'] ??
                                    "",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 15,
                                  ),
                                  Text(mylist[vindex]['rating']),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_sharp,
                                size: 10,
                              ),
                              Text(
                                mylist[vindex]['location'],
                                style: TextStyle(
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
