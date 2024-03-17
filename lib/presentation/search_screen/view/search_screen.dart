import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> trainNames = [
    'Rajdhani Express',
    'Shatabdi Express',
    'Duronto Express',
    'Gatimaan Express',
    'Tejas Express',
    'Garib Rath Express',
    'Vivek Express',
    'Humsafar Express',
    'Sampark Kranti Express',
    'Jan Shatabdi Express',
  ];

  List<String> pnrNumbers = [
    '1234567890',
    '2345678901',
    '3456789012',
    '4567890123',
    '5678901234',
    '6789012345',
    '7890123456',
    '8901234567',
    '9012345678',
    '0123456789',
  ];

  List<String> filteredItems = [];

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    filteredItems.addAll(trainNames);
    super.initState();
  }

  void filterSearchResults(String query) {
    List<String> dummySearchList = [];
    dummySearchList.addAll(trainNames);
    dummySearchList.addAll(pnrNumbers);
    if (query.isNotEmpty) {
      List<String> dummyListData = [];
      dummySearchList.forEach((item) {
        if (item.toLowerCase().contains(query.toLowerCase())) {
          dummyListData.add(item);
        }
      });
      setState(() {
        filteredItems.clear();
        filteredItems.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        filteredItems.clear();
        filteredItems.addAll(trainNames);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Train Search'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: searchController,
                onChanged: filterSearchResults,
                decoration: InputDecoration(
                  labelText: 'Search',
                  hintText: 'Search for a train or PNR number...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(filteredItems[index]),
                    onTap: () {
                      // Handle when a train or PNR number is tapped
                      print('Selected item: ${filteredItems[index]}');
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
