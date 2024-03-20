import 'package:hive_flutter/hive_flutter.dart';

@HiveType(typeId: 1)
class TraindetailsModel {
  @HiveField(0)
  final String tainname;
  @HiveField(1)
  final List locations;
  @HiveField(2)
  TraindetailsModel({
    required this.tainname,
    required this.locations,
  });
}
