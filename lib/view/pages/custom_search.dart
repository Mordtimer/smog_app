import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:smog_app/domain/failure.dart';

class CustomSearch extends SearchDelegate {
  List<String> listExample = [];
  List<String> recentList = [];
  Either<Failure, String> result = left(Failure());

  CustomSearch(this.recentList, this.listExample);
  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      // TODO: Configure Theme data for navbar
      textTheme: Theme.of(context).textTheme.apply(),
    );
  }

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
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, result);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    result = right(query);
    final str = result.fold((l) => 'error', (r) => r);
    print(str);
    close(context, result);
    return CircularProgressIndicator();
  
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
          return ListTile(
            title: Text(suggestionList[index]),
            onTap: () {
              result.fold((l) => null, (r) {
                suggestionList[index];
                addToHistory(r);
                print(r);
                close(context, r);
              });
            },
          );
        });
  }
}
