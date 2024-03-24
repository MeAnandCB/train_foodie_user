import 'package:hive_flutter/hive_flutter.dart';
part 'food_model.g.dart';

@HiveType(typeId: 2)
class FoodModel {
  @HiveField(0)
  final String hotelname;
  @HiveField(1)
  final String des;
  @HiveField(2)
  final rating;
  @HiveField(3)
  final location;
  @HiveField(4)
  final images;

  FoodModel({
    required this.hotelname,
    required this.location,
    required this.des,
    required this.rating,
    required this.images,
  });
}
