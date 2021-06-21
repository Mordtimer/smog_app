import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:smog_app/application/webservice/webservice_bloc.dart';
import 'package:smog_app/injection.dart';
import 'package:smog_app/model/webservice.dart';
import 'package:smog_app/view/my_home_page.dart';
import 'package:smog_app/view/weather_page.dart';
import 'package:smog_app/view_model/home_page_vm.dart';

void main(){
  configureDependencies(Env.prod);  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => getIt<WebserviceBloc>(),
        child: WeatherPage(),
      )
    );
  }
}

/*class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: 
      
      ChangeNotifierProvider(
        create: (context) => HomePageVM(),
        child: HomePage(),
      ),
    );
  }
}*/

