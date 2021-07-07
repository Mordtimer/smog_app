import 'package:hive/hive.dart';

class HistoryRepository{
  Box<String>? _items;

  HistoryRepository._privateCostructor();
  static final HistoryRepository _instance = HistoryRepository._privateCostructor();
  
  String get last => _items!.values.last;
  List<String> get getHistory => _items!.values.toList();
  
  factory HistoryRepository(){
    return _instance;
  }
  static HistoryRepository get instance => _instance;
  
  setBox(Box<String> box){
    _items = box;
  }

  void add(String city){
    _items!.put(city.hashCode, city);
  }
}