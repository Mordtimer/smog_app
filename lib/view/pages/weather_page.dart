import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smog_app/application/cubit/plot_cubit.dart';
import 'package:smog_app/application/webservice/webservice_bloc.dart';
import 'package:smog_app/domain/enums.dart';
import 'package:smog_app/domain/failure.dart';
import 'package:smog_app/injection.dart';
import 'package:smog_app/model/pollution_data_model.dart';
import 'package:smog_app/view/Pages/custom_search.dart';

import '../chart_widget.dart';

class WeatherPage extends StatelessWidget {
  List<String> get allCities => ["Miasto 1", "Miasto 2", "Miasto 3"];
  List<String> get searchHistory => ["Historia 1", "Historia 2", "Historia 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            // TODO: Menu button to implement here
            icon: Icon(CupertinoIcons.settings),
            onPressed: () {
              // Here will be some menu actions stuff
            },
          ),
          title: Text(
            context
                .read<WebserviceBloc>()
                .currentCity
                .fold((l) => '', (r) => r),
            style: Theme.of(context).primaryTextTheme.headline5,
          ),
          actions: [
            IconButton(
              // Search button
              icon: const Icon(CupertinoIcons.search),
              onPressed: () async {
                Either<Failure, String> searchResult = await showSearch(
                    context: context,
                    delegate: CustomSearch(searchHistory, allCities));
                searchResult.fold((l) {}, (r) {
                  context
                      .read<WebserviceBloc>()
                      .add(WebserviceEvent.newCity(city: r));
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/', (route) => false);
                });
              },
            ),
          ]),
      body: BlocProvider(
        create: (context) => getIt<PlotCubit>(),
        child: WeatherDetails(),
      ),
    );
  }
}

class WeatherDetails extends StatelessWidget {
  const WeatherDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(flex: 1, child: Container()),
              Expanded(flex: 8, child: ChartWidget()),
              Expanded(flex: 1, child: Container()),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 32),
            child: Row(
              children: <Widget>[
                Expanded(flex: 1, child: Container()),
                Expanded(
                    flex: 8,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () => context
                                      .read<PlotCubit>()
                                      .changeCurrentComponent(
                                          ComponentType.no2),
                                  child: Card(
                                    color: Theme.of(context).primaryColor,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text("Nitrogen dioxide\n (μg/m^3)",
                                              textAlign: TextAlign.center,
                                              style: Theme.of(context)
                                                  .primaryTextTheme
                                                  .bodyText1),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text(
                                              context
                                                  .read<WebserviceBloc>()
                                                  .currentForecast
                                                  .fold(
                                                    (l) => l.message,
                                                    (r) => r
                                                        .data[0].components.so2
                                                        .toString(),
                                                  ),
                                              textAlign: TextAlign.center,
                                              style: Theme.of(context)
                                                  .primaryTextTheme
                                                  .headline4),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () => context
                                      .read<PlotCubit>()
                                      .changeCurrentComponent(ComponentType.co),
                                  child: Card(
                                    color: Theme.of(context).primaryColor,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text(
                                              "Carbon Monoxide\n (μg/m^3)",
                                              textAlign: TextAlign.center,
                                              style: Theme.of(context)
                                                  .primaryTextTheme
                                                  .bodyText1),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text(
                                              context
                                                  .read<WebserviceBloc>()
                                                  .currentForecast
                                                  .fold(
                                                    (l) => l.message,
                                                    (r) => r
                                                        .data[0].components.co
                                                        .toString(),
                                                  ),
                                              textAlign: TextAlign.center,
                                              style: Theme.of(context)
                                                  .primaryTextTheme
                                                  .headline4),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () => context
                                      .read<PlotCubit>()
                                      .changeCurrentComponent(
                                          ComponentType.pm25),
                                  child: Card(
                                    color: Theme.of(context).primaryColor,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text("Fine particles matter\n (μg/m^3)",
                                              textAlign: TextAlign.center,
                                              style: Theme.of(context)
                                                  .primaryTextTheme
                                                  .bodyText1),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text(
                                              context
                                                  .read<WebserviceBloc>()
                                                  .currentForecast
                                                  .fold(
                                                    (l) => l.message,
                                                    (r) => r
                                                        .data[0].components.pm25
                                                        .toString(),
                                                  ),
                                              textAlign: TextAlign.center,
                                              style: Theme.of(context)
                                                  .primaryTextTheme
                                                  .headline4),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () => Navigator.of(context)
                                      .pushNamed('/weather/details'),
                                  child: Card(
                                    color: Theme.of(context).primaryColor,
                                    child: Icon(
                                      CupertinoIcons.arrow_right,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                Expanded(flex: 1, child: Container()),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

