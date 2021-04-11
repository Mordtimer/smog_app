import 'package:http/http.dart' as http;
import 'Forecast.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;

// Class creating request for 
class Webservice {
 
  Future<Forecast> fetchForecast(String keyword) async {
    await DotEnv.load(fileName: "keys.env");
    
    Uri request = Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=$keyword,pl&APPID=${DotEnv.env['API_KEY']}');
    final response = await http.get(request);
    if(response.statusCode == 200) {
      /*print(Forecast.fromJson(jsonDecode(response.body)).statusCode);
       return Forecast.fromJson(jsonDecode(response.body));*/
      
    } else {
      /*print(Forecast.fromJson(jsonDecode(response.body)).statusCode);*/
      throw Exception("Unable to perform request!");
    }
  }
}