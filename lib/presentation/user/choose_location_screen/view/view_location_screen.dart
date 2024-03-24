import 'package:flutter/material.dart';
import 'package:train_foodie_user/core/colors.dart';
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
  String? _phoneNumber;
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
                    _selectedTrain == null
                        ? SizedBox()
                        : Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(10)),
                            child: DropdownButtonFormField(
                              value: _selectedStop,
                              items: _selectedTrain == 'Rajdhani Express'
                                  ? DatabaseData.stopNames.map((stopName) {
                                      return DropdownMenuItem(
                                        value: stopName,
                                        child: Text(stopName),
                                      );
                                    }).toList()
                                  : _selectedTrain == 'Shatabdi Express'
                                      ? DatabaseData.tamilNaduStations
                                          .map((stopName) {
                                          return DropdownMenuItem(
                                            value: stopName,
                                            child: Text(stopName),
                                          );
                                        }).toList()
                                      : _selectedTrain == 'Duronto Express'
                                          ? DatabaseData.delhiStations
                                              .map((stopName) {
                                              return DropdownMenuItem(
                                                value: stopName,
                                                child: Text(stopName),
                                              );
                                            }).toList()
                                          : _selectedTrain ==
                                                  'Garib Rath Express'
                                              ? DatabaseData.gujaratStations
                                                  .map((stopName) {
                                                  return DropdownMenuItem(
                                                    value: stopName,
                                                    child: Text(stopName),
                                                  );
                                                }).toList()
                                              : _selectedTrain ==
                                                      'Humsafar Express'
                                                  ? DatabaseData
                                                      .rajasthanStations
                                                      .map((stopName) {
                                                      return DropdownMenuItem(
                                                        value: stopName,
                                                        child: Text(stopName),
                                                      );
                                                    }).toList()
                                                  : _selectedTrain ==
                                                          'Gatimaan Express'
                                                      ? DatabaseData.goaStations
                                                          .map((stopName) {
                                                          return DropdownMenuItem(
                                                            value: stopName,
                                                            child:
                                                                Text(stopName),
                                                          );
                                                        }).toList()
                                                      : _selectedTrain ==
                                                              'Tejas Express'
                                                          ? DatabaseData
                                                              .delhiStations
                                                              .map((stopName) {
                                                              return DropdownMenuItem(
                                                                value: stopName,
                                                                child: Text(
                                                                    stopName),
                                                              );
                                                            }).toList()
                                                          : _selectedTrain ==
                                                                  'Vande Bharat Express'
                                                              ? DatabaseData
                                                                  .stopNames
                                                                  .map(
                                                                      (stopName) {
                                                                  return DropdownMenuItem(
                                                                    value:
                                                                        stopName,
                                                                    child: Text(
                                                                        stopName),
                                                                  );
                                                                }).toList()
                                                              : _selectedTrain ==
                                                                      'Antyodaya Express'
                                                                  ? DatabaseData
                                                                      .tamilNaduStations
                                                                      .map(
                                                                          (stopName) {
                                                                      return DropdownMenuItem(
                                                                        value:
                                                                            stopName,
                                                                        child: Text(
                                                                            stopName),
                                                                      );
                                                                    }).toList()
                                                                  : DatabaseData
                                                                      .delhiStations
                                                                      .map(
                                                                          (stopName) {
                                                                      return DropdownMenuItem(
                                                                        value:
                                                                            stopName,
                                                                        child: Text(
                                                                            stopName),
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
                    _selectedStop == null
                        ? SizedBox()
                        : Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(10)),
                            child: TextFormField(
                              keyboardType: TextInputType.phone,
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
                    _pnrNumber == null || _pnrNumber!.isEmpty
                        ? SizedBox()
                        : Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(10)),
                            child: TextFormField(
                              keyboardType: TextInputType.phone,
                              onChanged: (value) {
                                setState(() {
                                  _phoneNumber = value;
                                });
                              },
                              decoration: InputDecoration(
                                labelText: 'Phone Number',
                              ),
                            ),
                          ),
                    SizedBox(height: 20.0),
                    _phoneNumber == null || _phoneNumber!.isEmpty
                        ? InkWell(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ColorConstant.primaryColor
                                      .withOpacity(.6)),
                              child: Center(
                                child: Text(
                                  'Choose your Food',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        : InkWell(
                            onTap: () {
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
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ColorConstant.primaryColor),
                              child: Center(
                                child: Text(
                                  'Choose your Food',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
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
