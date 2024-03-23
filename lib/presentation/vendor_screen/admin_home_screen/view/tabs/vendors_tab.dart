import 'package:flutter/material.dart';
import 'package:train_foodie_user/core/database.dart';
import 'package:train_foodie_user/presentation/vendor_screen/venders_list/view/venderslist.dart';
import 'package:train_foodie_user/presentation/vendor_screen/vendor_food_screen/view/vendor_food_screen.dart';

class VendersTab extends StatefulWidget {
  @override
  State<VendersTab> createState() => _VendersTabState();
}

class _VendersTabState extends State<VendersTab> {
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<FormFieldState<String>> _titleKey = GlobalKey();
  final GlobalKey<FormFieldState<String>> _descriptionKey = GlobalKey();
  final GlobalKey<FormFieldState<String>> _locationKey = GlobalKey();
  final GlobalKey<FormFieldState<String>> _imageUrlKey = GlobalKey();
  final GlobalKey<FormFieldState<String>> _ratingKey = GlobalKey();

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _imageUrlController = TextEditingController();
  final TextEditingController _ratingController = TextEditingController();

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
                            controller: _titleController,
                            key: _titleKey,
                            decoration: InputDecoration(
                              hintText: "Title",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a title';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: _descriptionController,
                            key: _descriptionKey,
                            maxLines: 3,
                            decoration: InputDecoration(
                              hintText: "Description",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a description';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: _locationController,
                            key: _locationKey,
                            decoration: InputDecoration(
                              hintText: "Location",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a location';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: _imageUrlController,
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
                            controller: _ratingController,
                            key: _ratingKey,
                            decoration: InputDecoration(
                              hintText: "Rating",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a rating';
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
                                if (_formKey.currentState!.validate()) {
                                  DatabaseData.vendorData.add({
                                    'hotelName':
                                        _titleKey.currentState!.value!.trim(),
                                    'hotelDescription': _descriptionKey
                                        .currentState!.value!
                                        .trim(),
                                    'hotelImage': _imageUrlKey
                                        .currentState!.value!
                                        .trim(),
                                    'location': _locationKey
                                        .currentState!.value!
                                        .trim(),
                                    'rating':
                                        _ratingKey.currentState!.value!.trim(),
                                    'images': [],
                                  });
                                  setState(() {});
                                  Navigator.pop(context);
                                }
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
              ),
            );
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
