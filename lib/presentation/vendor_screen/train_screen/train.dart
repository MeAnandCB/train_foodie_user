import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Traindetails extends StatefulWidget {
  const Traindetails({super.key});

  @override
  State<Traindetails> createState() => _TraindetailsState();
}

class _TraindetailsState extends State<Traindetails> {
  final TextEditingController _trainNameController = TextEditingController();
  final TextEditingController _trainStopController = TextEditingController();
  List<Station> _stations = [];
  Map<String, dynamic> stationNames = {
    'train': '',
    "name": ["123"]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Train Stations'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _trainNameController,
              decoration: InputDecoration(labelText: 'Train Name'),
            ),
            SizedBox(height: 20.0),
            SizedBox(
              height: 50,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _trainStopController,
                      decoration: InputDecoration(labelText: 'Train Stop'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      _trainStopController.text.isNotEmpty
                          ? stationNames['name'].add(_trainStopController.text)
                          : ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('This is a SnackBar message'),
                                duration: Duration(seconds: 2),
                              ),
                            );
                      ;
                      _trainStopController.clear();
                      print(stationNames['name']);
                    },
                    child: Container(
                      width: 90,
                      color: Colors.amber,
                      child: Center(
                        child: Text("Add Stop"),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {},
              child: Text('Add'),
            ),
            SizedBox(height: 20.0),
            Text(
              'Stations:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _stations.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Station: ${_stations[index].name}'),
                        Text(
                            'Stops: ${stationNames[index]['name'].stops.toString()}'),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _trainNameController.dispose();
    _trainStopController.dispose();
    super.dispose();
  }
}

class Station {
  String name;
  List<String> stops;

  Station(this.name, this.stops);
}
