import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;
import 'package:provider/provider.dart';
import 'package:smog_app/view/my_home_page.dart';
import 'package:smog_app/view_model/home_page_vm.dart';

void main() async {
  await DotEnv.load(fileName: "keys.env");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
}

