import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:smog_app/domain/failure.dart';
import 'package:smog_app/model/pollution_data_model.dart';
import 'package:smog_app/model/webservice.dart';

part 'webservice_event.dart';
part 'webservice_state.dart';
part 'webservice_bloc.freezed.dart';

@lazySingleton
class WebserviceBloc extends Bloc<WebserviceEvent, WebserviceState> {
  final Webservice _forecastRepository;
  WebserviceBloc(this._forecastRepository) : super(WebserviceState.initial());
  Either<Failure, String> currentForecast = left(Failure());
  Either<Failure, String> currentCity = right('Miasto1');
  double currentLat = 50;
  double currentLon = 50;

  @override
  Stream<WebserviceState> mapEventToState(
    WebserviceEvent event,
  ) async* {
    yield* event.map(
      fetchData: (e) async* {
        currentCity = right(currentCity.fold((l) => '', (r) => r));
        final forecastResult =
            await _forecastRepository.fetchCurrentPollutionData('50', '50');
        yield forecastResult.fold(
            (l) => const WebserviceState.loadFailure(),
            (r) => WebserviceState.dataRecived(
                pollutionData: r, city: currentCity.fold((l) => '', (r) => r)));
      },
      newCity: (e) async* {
        currentCity = right(e.city);
        
        final forecastResult =
            await _forecastRepository.fetchCurrentPollutionData('50', '50');
        yield forecastResult.fold(
            (l) => const WebserviceState.loadFailure(),
            (r) => WebserviceState.dataRecived(
                pollutionData: r, city: currentCity.fold((l) => '', (r) => r)));
      },
      
    );
  }
}
