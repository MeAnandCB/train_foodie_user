import 'package:hive_flutter/hive_flutter.dart';
part 'history_model.g.dart';

@HiveType(typeId: 1)
class HistoryModel {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String location;
  @HiveField(2)
  final amount;
  @HiveField(3)
  final image;
  @HiveField(4)
  final date;
  @HiveField(5)
  final pnr;

  HistoryModel({
    required this.name,
    required this.location,
    required this.amount,
    required this.date,
    required this.image,
    required this.pnr,
  });
}
