import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:train_foodie_user/core/database.dart';

class vendorFoodScreen extends StatefulWidget {
  const vendorFoodScreen({super.key, required this.vendorIndex});
  final int vendorIndex;

  @override
  State<vendorFoodScreen> createState() => _vendorFoodScreenState();
}

class _vendorFoodScreenState extends State<vendorFoodScreen> {
  final _formKey = GlobalKey<FormState>();

  final GlobalKey<FormFieldState<String>> _locationKey = GlobalKey();
  final GlobalKey<FormFieldState<String>> _imageUrlKey = GlobalKey();
  final GlobalKey<FormFieldState<String>> _ratingKey = GlobalKey();

  final TextEditingController _imageController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: DatabaseData.vendorData[widget.vendorIndex]['images'].isEmpty
          ? Center(
              child: Text("No data found"),
            )
          : GridView.builder(
              itemCount:
                  DatabaseData.vendorData[widget.vendorIndex]['images'].length,
              padding: EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 250,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10),
              itemBuilder: (context, index) => Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.amber,
                          image: DecorationImage(
                              image: NetworkImage(
                                DatabaseData.vendorData[widget.vendorIndex]
                                        ['images'][index]['product_images'] ??
                                    "",
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Positioned(
                          right: 0,
                          child: IconButton(
                              onPressed: () {
                                DatabaseData.vendorData[widget.vendorIndex]
                                        ['images']
                                    .removeAt(index);
                                setState(() {});
                              },
                              icon: Icon(Icons.delete)))
                    ],
                  ),
                  Text(
                    DatabaseData.vendorData[widget.vendorIndex]['images'][index]
                            ['product_name'] ??
                        "",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    DatabaseData.vendorData[widget.vendorIndex]['images'][index]
                            ['product_price'] ??
                        "",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: Form(
                  key: _formKey,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Add vendors",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: _imageController,
                            key: _imageUrlKey,
                            decoration: InputDecoration(
                              hintText: "Image url",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter an image URL';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: _nameController,
                            key: _locationKey,
                            decoration: InputDecoration(
                              hintText: "Name",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a Name';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: _priceController,
                            key: _ratingKey,
                            decoration: InputDecoration(
                              hintText: "Price",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a Price';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Cancel"),
                            ),
                            SizedBox(width: 10),
                            ElevatedButton(
                              onPressed: () {
                                DatabaseData.vendorData[widget.vendorIndex]
                                        ['images']
                                    .add({
                                  "pro_images": _imageController.text.trim(),
                                  "product_name": _nameController.text.trim(),
                                  "product_price": _priceController.text.trim()
                                });
                                // DatabaseData.vendorData.add({
                                //   'images': imageController.text.trim(),
                                //   'product_name': nameController.text.trim(),
                                //   'product_price': priceController.text.trim()
                                // });

                                // DatabaseData.vendorData[widget.vendorIndex]
                                //         ['images']
                                //     .add(_imageController.text.trim());
                                // DatabaseData.vendorData[widget.vendorIndex]
                                //         ['product_name']
                                //     .add(_nameController.text.trim());
                                // DatabaseData.vendorData[widget.vendorIndex]
                                //         ['product_price']
                                //     .add(_priceController.text.trim());
                                setState(() {});
                                Navigator.pop(context);
                              },
                              child: Text("Save data"),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
