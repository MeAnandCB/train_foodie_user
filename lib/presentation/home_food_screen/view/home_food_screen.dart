import 'package:flutter/material.dart';
import 'package:train_foodie_user/presentation/choose_location_screen/view/view_location_screen.dart';
import 'package:train_foodie_user/presentation/food_details_screen/view/food_detail_screen.dart';

class HomeFoodScreen extends StatefulWidget {
  const HomeFoodScreen({super.key});

  @override
  State<HomeFoodScreen> createState() => _HomeFoodScreenState();
}

class _HomeFoodScreenState extends State<HomeFoodScreen> {
  final List<FoodItem> foodItems = [
    FoodItem(imagePath: 'assets/1.jpg', category: 'Breakfast'),
    FoodItem(imagePath: 'assets/non.png', category: 'Non-veg'),
    FoodItem(imagePath: 'assets/2.png', category: 'Veg'),
    FoodItem(imagePath: 'assets/3.png', category: 'Snacks'),
    FoodItem(imagePath: 'assets/cake.png', category: 'Cake'),
    FoodItem(imagePath: 'assets/fruites.png', category: 'Fruits'),
    FoodItem(imagePath: 'assets/dri.png', category: 'Drinks'),
    FoodItem(imagePath: 'assets/ckn.png', category: 'Alphams'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Text("Hi ANAND"),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Image.asset(
                "assets/meta_image.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(
                    "Find the best foods",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "near you!",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // InkWell(
                  //   onTap: () {
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //           builder: (context) => SearchScreen(),
                  //         ));
                  //   },
                  //   child: Container(
                  //     padding:
                  //         EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(10),
                  //       border: Border.all(),
                  //     ),
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: [
                  //         Text(
                  //           "Search your PNR / Train Number",
                  //         ),
                  //         Icon(Icons.search)
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: foodItems.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ViewLocationScreen(),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GridTile(
                                child: Image.asset(
                                  foodItems[index].imagePath,
                                  fit: BoxFit.cover,
                                ),
                                footer: Container(
                                  color: Colors.black54,
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    foodItems[index].category,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    // return Center(
    //   child: Padding(
    //     padding: EdgeInsets.only(left: 40, right: 40, bottom: 10),
    //     child: Column(
    //       children: [
    //         ListView(
    //           children: [
    //             SizedBox(
    //               height: 28,
    //             ),
    //             Center(
    //               child: Text(
    //                 "Find the best foods",
    //                 style: TextStyle(
    //                   color: ConstantColors.primaryColor,
    //                   fontSize: 24,
    //                   fontWeight: FontWeight.bold,
    //                 ),
    //               ),
    //             ),
    //             Center(
    //               child: Text(
    //                 "near you!",
    //                 style: TextStyle(
    //                   color: ConstantColors.primaryColor,
    //                   fontSize: 24,
    //                   fontWeight: FontWeight.bold,
    //                 ),
    //               ),
    //             ),
    //             SizedBox(
    //               height: 37,
    //             ),
    //             SizedBox(
    //               height: 30,
    //             ),
    //
    //         Container(
    //           width: 190,
    //           height: 60,
    //           decoration: BoxDecoration(
    //             color: Colors.green, // Background color
    //             borderRadius: BorderRadius.circular(20), // Border radius
    //           ),
    //           child: const Center(
    //             child: Text(
    //               "Your Order",
    //               style: TextStyle(
    //                 color: Colors.white, // Text color
    //                 fontWeight: FontWeight.bold, // Text weight
    //                 fontSize: 16, // Text size
    //               ),
    //             ),
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}

class FoodItem {
  final String imagePath;
  final String category;

  FoodItem({required this.imagePath, required this.category});
}
