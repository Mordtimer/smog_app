import 'package:flutter/cupertino.dart';
import 'package:smog_app/model/pollution_data_model.dart';
import 'package:smog_app/model/webservice.dart';
class HomePageVM extends ChangeNotifier {
  final String currentCity = "Wiocha";

  PollutionData? _currentPollution;

  List<String> get allCities => ["Miasto 1", "Miasto 2", "Miasto 3"];

  List<String> get searchHistory => ["Historia 1", "Historia 2", "Historia 3"];

  Future<void> getCurrentPollution() async {
    final response = await Webservice().fetchCurrentPollutionData("50", "50");

    if (response!= null){
      _currentPollution = response;
      notifyListeners();
    }

  }
}