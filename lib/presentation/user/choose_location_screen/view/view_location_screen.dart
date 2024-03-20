import 'package:flutter/material.dart';
import 'package:train_foodie_user/core/database.dart';
import 'package:train_foodie_user/presentation/user/vender_list_screen/vender_list_screen.dart';

class ViewLocationScreen extends StatefulWidget {
  const ViewLocationScreen({super.key});

  @override
  State<ViewLocationScreen> createState() => _ViewLocationScreenState();
}

class _ViewLocationScreenState extends State<ViewLocationScreen> {
  String? _selectedTrain;
  String? _stopName;
  String? _pnrNumber;
  String? _selectedStop;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      child: DropdownButtonFormField(
                        value: _selectedTrain,
                        items: DatabaseData.trainNames.map((trainName) {
                          return DropdownMenuItem(
                            value: trainName,
                            child: Text(trainName),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedTrain = value;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'Select Train',
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      child: DropdownButtonFormField(
                        value: _selectedStop,
                        items: DatabaseData.stopNames.map((stopName) {
                          return DropdownMenuItem(
                            value: stopName,
                            child: Text(stopName),
                          );
                        }).toList(),
                        onChanged: (x) {
                          setState(() {
                            _selectedStop = x;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'Select Stop',
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _pnrNumber = value;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'PNR Number',
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        // Handle saving functionality here
                        print('Train: $_selectedTrain');
                        print('Stop Name: $_stopName');
                        print('PNR Number: $_pnrNumber');

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => venderListScreen(
                                pnr: _pnrNumber.toString(),
                              ),
                            ));
                      },
                      child: Text('Choose your Food'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
