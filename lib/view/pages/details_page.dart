import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/src/provider.dart';
import 'package:smog_app/application/cubit/plot_cubit.dart';
import 'package:smog_app/application/webservice/webservice_bloc.dart';
import 'package:smog_app/domain/failure.dart';

import '../../injection.dart';
import 'custom_search.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);
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
                .fold((l) => 'No city selected', (r) => r),
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
        child: DetailsWidget(),
      ),
    );
  }
}

class DetailsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(flex: 1, child: Container()),
              Expanded(
                  flex: 8,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 32),
                    child: BlocBuilder<PlotCubit, PlotState>(
                      builder: (context, state) {
                        return Container(
                            color: Colors.red,
                            child: Text(context
                                .read<PlotCubit>()
                                .state
                                .currentComponent));
                      },
                    ),
                  )),
              Expanded(flex: 1, child: Container()),
            ],
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: context.read<WebserviceBloc>().currentForecast.fold(
                    (l) => 0, (r) => r.data[0].components.compList.length),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () => context
                        .read<PlotCubit>()
                        .changeCurrentComponent(context
                            .read<WebserviceBloc>()
                            .currentForecast
                            .fold(
                                (l) => '',
                                (r) =>
                                    r.data[0].components.compNameList[index])),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        height: 50,
                        color: Colors.red,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                                child: Text(context
                                    .read<WebserviceBloc>()
                                    .currentForecast
                                    .fold(
                                        (l) => '',
                                        (r) => r.data[0].components
                                            .compNameList[index])),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                child: Text(context
                                    .read<WebserviceBloc>()
                                    .currentForecast
                                    .fold(
                                        (l) => 'No Data',
                                        (r) => r.data[0].components
                                            .compList[index])),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                })),
      ],
    );
  }
}
