import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smog_app/view_model/home_page_vm.dart';

import 'custom_search.dart';


class HomePage extends StatefulWidget {

  late final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void initState() {
    super.initState();
    
    Provider.of<HomePageVM>(context, listen: false).getCurrentPollution();
  }

  @override
  Widget build(BuildContext context) {
    HomePageVM vm = Provider.of<HomePageVM>(context);

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
              vm.currentCity,
              style: Theme.of(context).primaryTextTheme.headline5,
            ),
            actions: [
              IconButton(
                // Search button
                icon: const Icon(Icons.search),
                onPressed: () async {
                  final searchResult = await showSearch(
                          context: context,
                          delegate: CustomSearch(vm.searchHistory, vm.allCities))
                      as String;
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
    );
  }
}
