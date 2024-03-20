import 'package:flutter/material.dart';
import 'package:train_foodie_user/core/database.dart';
import 'package:train_foodie_user/presentation/vendor_screen/venders_list/view/venderslist.dart';
import 'package:train_foodie_user/presentation/vendor_screen/vendor_food_screen/view/vendor_food_screen.dart';

class VendersTab extends StatefulWidget {
  const VendersTab({
    super.key,
  });

  @override
  State<VendersTab> createState() => _VendersTabState();
}

class _VendersTabState extends State<VendersTab> {
  final titileCOntroller = TextEditingController();
  final desCOntroller = TextEditingController();
  final locaCOntroller = TextEditingController();
  final imageCOntroller = TextEditingController();
  final ratingCOntroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Add venders",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: titileCOntroller,
                            decoration: InputDecoration(
                                hintText: "Title",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: desCOntroller,
                            maxLines: 3,
                            decoration: InputDecoration(
                                hintText: "Description",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: locaCOntroller,
                            decoration: InputDecoration(
                                hintText: "Location",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: imageCOntroller,
                            decoration: InputDecoration(
                                hintText: "Image url",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: ratingCOntroller,
                            decoration: InputDecoration(
                                hintText: "rating",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("Cancel")),
                            SizedBox(width: 10),
                            ElevatedButton(
                                onPressed: () {
                                  DatabaseData.vendorData.add({
                                    'hotelName': titileCOntroller.text.trim(),
                                    'hotelDescription':
                                        desCOntroller.text.trim(),
                                    'hotelImage': imageCOntroller.text.trim(),
                                    'location': locaCOntroller.text.trim(),
                                    'rating': ratingCOntroller.text.trim(),
                                  });
                                  setState(() {});
                                  Navigator.pop(context);
                                },
                                child: Text("save data"))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          child: Icon(Icons.add)),
      body: ListView.separated(
        padding: EdgeInsets.symmetric(vertical: 20),
        itemCount: DatabaseData.vendorData.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => vendorFoodScreen(
                    vendorIndex: index,
                  ),
                ));
          },
          child: VendersList(
            inx: index,
            delete: () {
              DatabaseData.vendorData.removeAt(index);
              setState(() {});
            },
          ),
        ),
        separatorBuilder: (context, index) => SizedBox(
          height: 10,
        ),
      ),
    );
  }
}
