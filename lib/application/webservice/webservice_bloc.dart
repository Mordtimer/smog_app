import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:smog_app/model/pollution_data_model.dart';
import 'package:smog_app/model/webservice.dart';

part 'webservice_event.dart';
part 'webservice_state.dart';
part 'webservice_bloc.freezed.dart';

@singleton
class WebserviceBloc extends Bloc<WebserviceEvent, WebserviceState> {
  final Webservice _forecastRepository;
  WebserviceBloc(this._forecastRepository) : super(WebserviceState.initial());
  String currentCity = 'Warszawa';

  @override
  Stream<WebserviceState> mapEventToState(
    WebserviceEvent event,
  ) async* {
    event.map(
        fetchData: (e) async* {
          final result =
              await _forecastRepository.fetchCurrentPollutionData('50', '50');
          yield result.fold((l) => const WebserviceState.loadFailure(),
              (r) => WebserviceState.dataRecived(pollutionData: r, city: currentCity));
        },
        reciveCity: (e) async* {yield WebserviceState.selectedCity(city: e.city);});
  }
}
