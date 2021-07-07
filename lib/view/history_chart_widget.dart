import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smog_app/application/cubit/plot_cubit.dart';
import 'package:smog_app/application/webservice/webservice_bloc.dart';
import 'package:smog_app/domain/enums.dart';
import 'package:smog_app/model/pollution_data_model.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HistoryChartWidget extends StatelessWidget {
  const HistoryChartWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlotCubit, PlotState>(
      builder: (context, state) {
        return Column(children: [
          Container(
              color: Theme.of(context).primaryColor,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: SfCartesianChart(
                    title: ChartTitle(
                        textStyle: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: Colors.white70),
                        text: context.read<PlotCubit>().getStrComponent),
                    primaryXAxis: DateTimeAxis(
                        interactiveTooltip: InteractiveTooltip(enable: true)),
                    series: <ChartSeries>[
                      LineSeries<Data, DateTime>(
                          dataSource: context
                              .read<WebserviceBloc>()
                              .historicalPollution
                              .fold((l) => [], (r) => r.getListBasedOnEnum(context.read<PlotCubit>().state.currentTimePeriod)),
                          xValueMapper: (datum, _) => datum.time,
                          yValueMapper: (datum, _) => datum.components
                              .getComponent(context
                                  .read<PlotCubit>()
                                  .state
                                  .currentComponent))
                    ]),
              )),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              Expanded(child: TextButton(onPressed: () {context.read<PlotCubit>().changeTimePeriod(TimePeriod.week);}, child: Text('Week'))),
              Expanded(child: TextButton(onPressed: () {context.read<PlotCubit>().changeTimePeriod(TimePeriod.month);}, child: Text('Month'))),
              Expanded(child: TextButton(onPressed: () {context.read<PlotCubit>().changeTimePeriod(TimePeriod.quarter);}, child: Text('Quarter'))),
              Expanded(child: TextButton(onPressed: () {context.read<PlotCubit>().changeTimePeriod(TimePeriod.halfYear);}, child: Text('180 days')))
            ],
          )
        ]);
      },
    );
  }
}
