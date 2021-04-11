import 'package:flutter/cupertino.dart';
class HomePageVM extends ChangeNotifier {
  final currentCity = "Wiocha";

  List<String> get allCities => ["Miasto 1", "Miasto 2", "Miasto 3"];

  List<String> get searchHistory => ["Historia 1", "Historia 2", "Historia 3"];
}