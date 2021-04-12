import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smog_app/view/my_home_page.dart';
import 'package:smog_app/view_model/home_page_vm.dart';

void main(){
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
      home: 
      
      ChangeNotifierProvider(
        create: (context) => HomePageVM(),
        child: HomePage(),
      ),
    );
  }
}

