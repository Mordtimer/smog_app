import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smog_app/application/webservice/webservice_bloc.dart';
import 'package:smog_app/infrastructure/history_repository.dart';
import 'package:smog_app/injection.dart';
import 'package:smog_app/view/Pages/city_failure_page.dart';
import 'package:smog_app/view/Pages/load_page.dart';
import 'package:smog_app/view/pages/details_page.dart';
import 'package:smog_app/view/pages/weather_page.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  configureDependencies(Env.prod);
  await Hive.initFlutter();
  Box<String> historyBox = await Hive.openBox('historyBox');
  if (historyBox.isEmpty){
    historyBox.put('Gliwice'.hashCode, 'Gliwice');
  }
  HistoryRepository.instance.setBox(historyBox);
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
          textTheme: TextTheme().apply(bodyColor: Colors.white),
          primaryColor: Colors.grey[900],
          scaffoldBackgroundColor: Color(0x2C2C2E)
        ),
        routes: {
          '/': (context) => LoadPage(),
          '/weather': (context) => WeatherPage(),
          '/error': (context) => CityFailurePage(),
          '/weather/details': (context) => DetailsPage(),
        },
        initialRoute: '/',
        debugShowCheckedModeBanner: false,
        
      ),
    );
  }
}

