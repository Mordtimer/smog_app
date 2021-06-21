import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smog_app/application/webservice/webservice_bloc.dart';
import 'package:smog_app/view/custom_search.dart';

class WeatherPage extends StatelessWidget {
   List<String> get allCities => ["Miasto 1", "Miasto 2", "Miasto 3"];

  List<String> get searchHistory => ["Historia 1", "Historia 2", "Historia 3"];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WebserviceBloc, WebserviceState>(
      listener: (context, state) {},
      builder: (context, state) { return Scaffold(
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
              'lol',
              style: Theme.of(context).primaryTextTheme.headline5,
            ),
            actions: [
              IconButton(
                // Search button
                icon: const Icon(Icons.search),
                onPressed: () async {
                  final searchResult = await showSearch(
                          context: context,
                          delegate: CustomSearch(searchHistory, allCities));
                  //vm.currentCity = result;
                  //vm.fetchForecast();
                },
              ),
            ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'All data stuff here',
            ),
          ],
        ),
      ),
    );},
    );
  }
}
