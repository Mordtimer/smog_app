import 'package:csv/csv.dart';
import 'package:flutter/services.dart' show rootBundle;

class CitiesRepository {
  CitiesRepository._privateConstructor();
  static final CitiesRepository _instance =
      CitiesRepository._privateConstructor();
  factory CitiesRepository() {
    return _instance;
  }
  List<String> _allCities = [];
  List<String> get allCities => _allCities;

  Future<void> loadAll() async {
    final csvData = await rootBundle.loadString("assets/places.csv");
    List<List<dynamic>> csvTable = CsvToListConverter().convert(csvData);
    List<String> result = [];
    for (List<dynamic> el in csvTable) {
      result.add(_removeBefore(el[0].toString(), ';'));
    }
    _allCities = result;
  }

  String _removeBefore(String s, String el) {
    var pos = s.lastIndexOf(el);
    String result = (pos != -1) ? s.substring(pos + 1, s.length) : s;
    return result;
  }
}
