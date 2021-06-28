import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smog_app/application/webservice/webservice_bloc.dart';
import 'package:smog_app/injection.dart';
import 'package:smog_app/view/Pages/city_failure_page.dart';
import 'package:smog_app/view/Pages/load_page.dart';
import 'package:smog_app/view/pages/details_page.dart';
import 'package:smog_app/view/pages/weather_page.dart';
import 'package:smog_app/view/search_again_page.dart';

void main(){
  configureDependencies(Env.prod);  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<WebserviceBloc>()..add(WebserviceEvent.fetchData()),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (context) => LoadPage(),
          '/weather': (context) => WeatherPage(),
          '/error': (context) => CityFailurePage(),
          '/searchAgain': (context) => SearchAgainPage(),
          '/weather/details': (context) => DetailsPage(),
        },
        initialRoute: '/',
        debugShowCheckedModeBanner: false,
        
      ),
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

