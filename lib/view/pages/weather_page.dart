import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:smog_app/application/webservice/webservice_bloc.dart';
import 'package:smog_app/domain/failure.dart';
import 'package:smog_app/view/Pages/custom_search.dart';

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
            icon: Icon(Icons.menu),
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
              icon: const Icon(Icons.search),
              onPressed: () async {
                Either<Failure, String> searchResult = await showSearch(
                    context: context,
                    delegate: CustomSearch(searchHistory, allCities));
                searchResult.fold((l) {}, (r) {
                  context
                      .read<WebserviceBloc>()
                      .add(WebserviceEvent.newCity(city: r));
                      Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                });
              },
            ),
          ]),
      body: WeatherDetails(),
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
              Expanded(
                  flex: 8,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 32),
                    child: Container(
                      color: Colors.tealAccent,
                    ),
                  )),
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
                                child: Card(
                                  color: Colors.amberAccent,
                                ),
                              ),
                              Expanded(
                                child: Card(
                                  color: Colors.amberAccent,
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
                                child: Card(
                                  color: Colors.amberAccent,
                                ),
                              ),
                              Expanded(
                                child: Card(
                                  color: Colors.amberAccent,
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
