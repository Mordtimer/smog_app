part of 'webservice_bloc.dart';

@immutable
@freezed
abstract class WebserviceState with _$WebserviceState{

  const factory WebserviceState.initial() = _Initial;
  const factory WebserviceState.loadInProgress() = _LoadInProgress;
  const factory WebserviceState.dataRecived({required PollutionData pollutionData, required String city}) = _DataRecived;
  const factory WebserviceState.loadFailure() = _LoadFailure;
  const factory WebserviceState.selectedCity({required String city}) = _SelectedCity;
  const factory WebserviceState.invalidCity() = _InvalidCity;
}

