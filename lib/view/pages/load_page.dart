import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smog_app/application/webservice/webservice_bloc.dart';

class LoadPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocListener<WebserviceBloc, WebserviceState>(
      listener: (context, state) {
        state.map(
            initial: (_) {
              context.read<WebserviceBloc>()
                ..add(const WebserviceEvent.fetchData());
            },
            loadInProgress: (_) {},
            dataRecived: (_) => Navigator.pushNamedAndRemoveUntil(
                context, '/weather', (route) => false),
            loadFailure: (_) => Navigator.pushNamedAndRemoveUntil(
                context, '/error', (route) => false),
            selectedCity: (_) => Navigator.pushNamedAndRemoveUntil(
                context, '/searchAgain', (route) => false),
            invalidCity: (_) => Navigator.pushNamedAndRemoveUntil(
                context, '/error', (route) => false));
      },
      child: Scaffold(
          body: Center(
        child: CircularProgressIndicator(),
      )),
    );
  }
}
