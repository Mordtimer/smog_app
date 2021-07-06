import 'package:flutter/cupertino.dart';
import 'package:smog_app/domain/enums.dart';

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
  final double longitude;
  final double latitude;

  Coord({required this.longitude, required this.latitude});

  factory Coord.fromJson(Map<String, dynamic> json) {
    return Coord(longitude: json['lon'], latitude: json['lat']);
  }
}

class Data {
  final int unixTime;
  final AirQualIndex airQualIndex;
  final Components components;

  DateTime get time =>
      DateTime.fromMillisecondsSinceEpoch(this.unixTime * 1000);

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

  double getComponent(ComponentType comp) {
    switch (comp) {
      case ComponentType.co:
        return double.parse(co.toString());
      case ComponentType.no:
        return double.parse(no.toString());
      case ComponentType.no2:
        return double.parse(no2.toString());
      case ComponentType.o3:
        return double.parse(o3.toString());
      case ComponentType.so2:
        return double.parse(so2.toString());
      case ComponentType.pm25:
        return double.parse(pm25.toString());
      case ComponentType.pm10:
        return double.parse(pm10.toString());
      case ComponentType.nh3:
        return double.parse(nh3.toString());
    }
  }

  List<dynamic> get compList => [
        co.toString(),
        no.toString(),
        no2.toString(),
        o3.toString(),
        so2.toString(),
        pm25.toString(),
        pm10.toString(),
        nh3.toString()
      ];

  List<String> get compNameList =>
      ['CO', 'NO', 'NO2', 'O3', 'SO2', 'PM25', 'PM10', 'NH3'];

  List<ComponentType> get compTypeList =>
      [ComponentType.co, ComponentType.no, ComponentType.no2, ComponentType.o3, ComponentType.so2, ComponentType.pm25, ComponentType.pm10, ComponentType.nh3];

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
        so2: json['so2'],
        pm25: json['pm2_5'],
        pm10: json['pm10'],
        nh3: json['nh3']));
  }
}

class HistoricalPollutionData {
  final Coord coord;
  final List<Data> data;

  List<Data> getListBadedOnEnum(TimePeriod period) {
    switch (period) {
      case TimePeriod.year:
        return this.lastYear;
      case TimePeriod.quarter:
        return this.lastQuarter;
      case TimePeriod.month:
        return this.lastMonth;
      case TimePeriod.week:
        return this.lastWeek;

    }
  }

  List<Data> get lastWeek {
    List<Data> tmp = [];
    for (int i = data.length - 1; i > data.length - 7*12; i--) {
      tmp.add(data[i]);
    }
    return tmp;
  }

  List<Data> get lastMonth {
    List<Data> tmp = [];
    for (int i = data.length - 1; i > data.length - 30*12; i--) {
      tmp.add(data[i]);
    }
    return tmp;
  }

  List<Data> get lastQuarter {
    List<Data> tmp = [];
    for (int i = data.length - 1; i > data.length - 12*93; i--) {
      tmp.add(data[i]);
    }
    return tmp;
  }

  List<Data> get lastYear {
    List<Data> tmp = [];
    for (int i = data.length - 1; i > data.length - 180*12; i--) {
      tmp.add(data[i]);
    }
    return tmp;
  }


  HistoricalPollutionData({required this.coord, required this.data});

  factory HistoricalPollutionData.fromJson(Map<String, dynamic> json) {
    var pollutionList = json['list'] as List;
    return HistoricalPollutionData(
        coord: Coord.fromJson(json['coord']),
        data: pollutionList.map((e) => Data.fromJson(e)).toList());
  }
}
