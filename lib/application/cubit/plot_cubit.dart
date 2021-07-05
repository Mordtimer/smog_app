import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'plot_state.dart';
part 'plot_cubit.freezed.dart';

@lazySingleton
class PlotCubit extends Cubit<PlotState> {
  PlotCubit() : super(PlotState.initial());
  void changeCurrentComponent(String compontent) => emit(state.copyWith(currentComponent: compontent));
}
