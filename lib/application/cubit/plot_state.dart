part of 'plot_cubit.dart';

@freezed
@immutable
abstract class PlotState with _$PlotState {
  const factory PlotState({required ComponentType currentComponent}) = _Initial;

  factory PlotState.initial() => PlotState(currentComponent: ComponentType.co);
}
