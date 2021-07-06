import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:smog_app/application/webservice/webservice_bloc.dart';

import 'load_page.dart';

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
          IconButton(
              onPressed: () {
                context.read<WebserviceBloc>()
                // TODO popraw
                      .add(WebserviceEvent.newCity(city: 'Gliwice'));
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
