import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:smog_app/domain/failure.dart';
import 'package:smog_app/model/pollution_data_model.dart';
// Class creating request for 

@injectable
class Webservice {
  @factoryMethod
  Future<Either<Failure, PollutionData>> fetchCurrentPollutionData(String cityName) async {
    await dotenv.load(fileName: "keys.env");
    
    try {
      final geoResponse = await http.get(Uri.https('api.openweathermap.org', '/geo/1.0/direct', {
        "q": cityName,
        "appid": dotenv.env['API_KEY']
      }));

      final Map latLon = jsonDecode(geoResponse.body)[0];

      if(latLon.isEmpty) {
        return left(Failure(message: 'City not found'));
      }

      final pollutionResponse = await http.get(Uri.https('api.openweathermap.org', '/data/2.5/air_pollution', {
        "lat": latLon['lat'].toString(),
        "lon": latLon['lon'].toString(),
        "appid": dotenv.env['API_KEY']
      }));

      if(pollutionResponse.statusCode > 300) {
        return left(Failure(message: pollutionResponse.body));
      }

      return right(PollutionData.fromJson(jsonDecode(pollutionResponse.body)));
    } catch (e) {
      return left(Failure(message: e.toString()));      
    }
 
  }
}