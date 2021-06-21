part of 'webservice_bloc.dart';


@freezed
abstract class WebserviceEvent with _$WebserviceEvent {
  const factory WebserviceEvent.fetchData({required int len, required int lat}) = _fetchData;
  const factory WebserviceEvent.reciveCity({required String city}) = _reciveCity;
}
