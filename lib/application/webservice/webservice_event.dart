part of 'webservice_bloc.dart';


@freezed
abstract class WebserviceEvent with _$WebserviceEvent {
  const factory WebserviceEvent.fetchData() = FetchData;
  const factory WebserviceEvent.newCity({required String city}) = NewCity;
  const factory WebserviceEvent.newCoords({required double len, required double lat}) = NewCoords;
}
