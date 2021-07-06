import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:smog_app/domain/enums.dart';

part 'plot_state.dart';
part 'plot_cubit.freezed.dart';

@injectable
class PlotCubit extends Cubit<PlotState> {
  PlotCubit() : super(PlotState.initial());

  String get getStrComponent {
    switch (state.currentComponent) {
      case ComponentType.co:
        return 'CO';
      case ComponentType.no:
        return 'NO';
      case ComponentType.no2:
        return 'NO2';
      case ComponentType.o3:
        return 'O3';
      case ComponentType.so2:
        return 'SO2';
      case ComponentType.pm25:
        return 'PM25';
      case ComponentType.pm10:
        return 'PM10';
      case ComponentType.nh3:
        return 'NH3';
    }
  }

  void changeTimePeriod(TimePeriod period) =>
      emit(state.copyWith(currentTimePeriod: period));
  void changeCurrentComponent(ComponentType compontent) =>
      emit(state.copyWith(currentComponent: compontent));
}
