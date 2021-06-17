import 'package:flutter/cupertino.dart';

class PollutionData {
  final Coord coord;
  final List<Data> data;

  PollutionData({required this.coord, required this.data});

  factory PollutionData.fromJson(Map<String, dynamic> json) {
    var pollutionList = json['list'] as List;
    return PollutionData(
        coord: Coord.fromJson(json['coord']),
        data: pollutionList.map((e) => Data.fromJson(e)).toList());
  }
}

class Coord {
  final int longitude;
  final int latitude;

  Coord({required this.longitude, required this.latitude});

  factory Coord.fromJson(Map<String, dynamic> json) {
    return Coord(longitude: json['lon'], latitude: json['lat']);
  }
}

class Data {
  final int unixTime;
  final AirQualIndex airQualIndex;
  final Components components;

  Data({
    required this.unixTime,
    required this.airQualIndex,
    required this.components,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
        unixTime: json['dt'],
        airQualIndex: AirQualIndex.fromJson(json['main']),
        components: Components.fromJson(json['components']));
  }
}

class AirQualIndex {
  final int value;

  AirQualIndex({required this.value});

  factory AirQualIndex.fromJson(Map<String, dynamic> json) {
    return AirQualIndex(value: json['aqi']);
  }
}

class Components {
  final co;
  final no;
  final no2;
  final o3;
  final so2;
  final pm25;
  final pm10;
  final nh3;

  Components({
    @required this.co,
    @required this.no,
    @required this.no2,
    @required this.o3,
    @required this.so2,
    @required this.pm25,
    @required this.pm10,
    @required this.nh3,
  }); 

  factory Components.fromJson(Map<String, dynamic> json) {
    return (Components(
        co: json['co'],
        no: json['no'],
        no2: json['no2'],
        o3: json['o3'],
        so2: json['so2'] ,
        pm25: json['pm2_5'],
        pm10: json['pm10'],
        nh3: json['nh3']));
  }
}
