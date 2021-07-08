import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smog_app/domain/failure.dart';
import 'package:smog_app/infrastructure/cities_repository.dart';

class CustomSearch extends SearchDelegate {
  List<String> listExample = [];
  List<String> recentList = CitiesRepository().allCities;
  Either<Failure, String> result = left(Failure(message: 'Initial custom search state'));

  CustomSearch(this.recentList, this.listExample);
  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      hintColor: Colors.white,
          textTheme: TextTheme(headline6: TextStyle(color: Colors.white)).apply(bodyColor: Colors.white),
          primaryColor: Colors.grey[900],
          scaffoldBackgroundColor: Color(0x2C2C2E),
          
    );
  }

  @override
TextStyle get searchFieldStyle => TextStyle(
    color: Colors.white,
    fontSize: 18.0,
  );

  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        icon: Icon(Icons.close),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    
    return IconButton(
      icon: Icon(CupertinoIcons.arrow_left),
      onPressed: () {
       
        close(context, result);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    const widget = CircularProgressIndicator();
    try{
    result = right(query);
    close(context, result);
    return widget;
    }
    catch (e) {
      return widget;
    }
  
  }

  void addToHistory(String element) {
    recentList.remove(element);
    recentList.insert(0, element);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestionList = [];
    query.isEmpty
        ? suggestionList = recentList // True
        : suggestionList.addAll(listExample.where(
            (el) => el.toLowerCase().contains(query.toLowerCase()) // False
            ));

    return ListView.builder(
        itemCount: suggestionList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              
              title: Text(suggestionList[index], style: TextStyle(color: Colors.white)),
              onTap: () {
                result = right(suggestionList[index]);
                close(context, result);
              },
            ),
          );
        });
  }
}
