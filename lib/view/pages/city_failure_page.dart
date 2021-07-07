import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';
import 'package:smog_app/application/webservice/webservice_bloc.dart';
import 'package:smog_app/infrastructure/history_repository.dart';

class CityFailurePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            'City not found',
            style: Theme.of(context)
                .textTheme
                .headline3!
                .copyWith(color: Colors.white),
          )),
          Center(child: Text('Check your internet connection', style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white))),
          IconButton(
              onPressed: () {
                String city = HistoryRepository().last;
                context.read<WebserviceBloc>()
                
                      .add(WebserviceEvent.newCity(city: city));
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/', (route) => false);
              },
              icon: Icon(
                CupertinoIcons.arrow_uturn_left_circle,
                color: Colors.white,
                size: 50,
              ))
        ],
      )),
    );
  }
}
