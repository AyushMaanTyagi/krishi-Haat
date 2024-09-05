import 'package:flutter/material.dart';
class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
        actions: [
          IconButton(onPressed:()
          {
            showSearch(context: context, delegate: CustomSearchDelegate(),);
          }, icon:Icon(Icons.search))
        ],
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate
{

  List<String> searchTerms=['Banana','Orange','Gobhi','Onion'];
@override
List<Widget> buildActions(BuildContext context)
{
  return [
      IconButton(
        onPressed: (){
          query='';
        }, 
        icon:const Icon(Icons.clear))
    ];
}

@override
  Widget buildLeading(BuildContext context)
  {
    return 
    IconButton(
      onPressed: (){
        close(context, null);
      }, 
      icon: const Icon(Icons.arrow_back_ios));
  }
  @override
  Widget buildResults(BuildContext context)
  {
    List<String> matchquery=[];
    for(var fruit in searchTerms)
    {
      if(fruit.toLowerCase().trim().contains(query.toLowerCase()))
      {
        matchquery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchquery.length,
      itemBuilder:(context, index) 
      {
        var result = matchquery[index];
        return   ListTile(
         leading:matchquery.length==0?SizedBox(): Image.asset("assets/images/${matchquery[index].toLowerCase().trim()}.png"),
          title: Text(result),
        );  
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context)
  {
    List<String> matchquery=[];
    for(var fruit in searchTerms){
      if (fruit.toLowerCase().contains(query.toLowerCase())) 
      {
          matchquery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchquery.length,
      itemBuilder: (context,index){
        var result =matchquery[index];
        return ListTile(
          leading:matchquery.length==0?SizedBox(): Image.asset("assets/images/${matchquery[index].toLowerCase().trim()}.png"),
          title: Text(result),
        );
      },);
  }

}