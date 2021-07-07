import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smog_app/domain/failure.dart';
import 'package:smog_app/infrastructure/webservice.dart';
import 'package:smog_app/model/pollution_data_model.dart';

Webservice webService = new Webservice();
void main() {
  test('fetchCurrentPollutionData - should return valid data with valid city', () async {
    final Either<Failure, PollutionData> pollutionResponse = await webService.fetchCurrentPollutionData("Gliwice");
    expect(pollutionResponse.fold((l) => false, (r) => true), true);
  });

  test('fetchCurrentPollutionData - should return error with invalid city', () async {
    final Either<Failure, PollutionData> pollutionResponse = await webService.fetchCurrentPollutionData("Fawfwkafnawfnaw");
    expect(pollutionResponse.fold((l) => false, (r) => true), false);
    expect(pollutionResponse.fold((l) => l.message, (r) => true), "City not found");
  });

  test('fetchHistoricalPollutionData - should return valid data with valid city', () async {
    final Either<Failure, HistoricalPollutionData> pollutionResponse = await webService.fetchHistoricalPollutionData("Gliwice");
    expect(pollutionResponse.fold((l) => false, (r) => true), true);
  });

  test('fetchHistoricalPollutionData - should return error with invalid city', () async {
    final Either<Failure, HistoricalPollutionData> pollutionResponse = await webService.fetchHistoricalPollutionData("Fawfwkafnawfnaw");
    expect(pollutionResponse.fold((l) => false, (r) => true), false);
    expect(pollutionResponse.fold((l) => l.message, (r) => true), "City not found");
  });
}
