import 'package:flutter/material.dart';
class Search extends StatelessWidget {
  final String title;
  const Search({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
              onPressed: (){
                showSearch(context: context, delegate: DataSearch());
              },
              icon: Icon(Icons.search,color: Colors.white,),);
  }
}
class DataSearch extends SearchDelegate<String>{
  @override
  List<Widget> buildActions(BuildContext context) {
       return[IconButton(onPressed: (){
      query='';
    },icon: Icon(Icons.clear),)];
    }
  
    @override
    Widget buildLeading(BuildContext context) {
        return IconButton(onPressed: (){
       close(context, null);
     },icon: Icon(Icons.arrow_back),);
    }
  
    @override
    Widget buildResults(BuildContext context) {
      // TODO: implement buildResults
      throw UnimplementedError();
    }
  
    @override
    Widget buildSuggestions(BuildContext context) {
   return Text('Ashish');
  }

}

