part of 'webservice_bloc.dart';

@immutable
@freezed
abstract class WebserviceState with _$WebserviceState{

  const factory WebserviceState.initial() = _Initial;
  const factory WebserviceState.loadInProgress() = _LoadInProgress;
  const factory WebserviceState.dataRecived(PollutionData recivedData) = _DataRecived;
  const factory WebserviceState.loadFailure() = _LoadFailure;

  
}

