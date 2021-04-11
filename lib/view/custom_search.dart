import 'package:flutter/material.dart';

class CustomSearch extends SearchDelegate {
  String selectedResult;
  List<String> listExample = [];
  List<String> recentList = [];
  CustomSearch(this.recentList, this.listExample);

    @override
    ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
    // TODO: Configure Theme data for navbar
    textTheme:Theme.of(context).textTheme.apply(
    ),
);
  }

  @override
  List<Widget> buildActions(BuildContext context) {
      return <Widget>[
        IconButton(
          icon: Icon(Icons.close),
          onPressed: () {query = "";},
          )
      ];
    }
  
    @override
    Widget buildLeading(BuildContext context) {
      return IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {Navigator.pop(context);},
      );
    }
  
    @override
    Widget buildResults(BuildContext context) {
      return Container(
        child:  Center(child: Text(selectedResult),
        ),
      );
    }

    void addToHistory(String element){
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
        itemBuilder: (context, index){
          return ListTile(
            title: Text(suggestionList[index]),
            onTap: (){
              selectedResult = suggestionList[index];
              addToHistory(selectedResult);
              print(selectedResult);
              close(context, selectedResult);
            },
            );

        }
      );
  }
}