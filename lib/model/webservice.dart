import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:smog_app/model/pollution_data_model.dart';

// Class creating request for 
class Webservice {
 
  Future<PollutionData> fetchCurrentPollutionData(String lat, String lon) async {
    await dotenv.load(fileName: "keys.env");
    
    // lat = 50, lon = 50 test
    Uri request = Uri.parse('https://api.openweathermap.org/data/2.5/air_pollution?lat=50&lon=50&appid=${dotenv.env['API_KEY']}');
    //Uri request = Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=$keyword,pl&APPID=${DotEnv.env['API_KEY']}');
    final response = await http.get(request);
    if(response.statusCode != 200){
      /*print(Forecast.fromJson(jsonDecode(response.body)).statusCode);*/
      throw Exception("Unable to perform request!");
    }
    return PollutionData.fromJson(jsonDecode(response.body));
  }
}