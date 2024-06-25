import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {

  List<Map<String ,dynamic>> data =[
    {'id':1,'name':'Mubashir Munir','age':15}
,{'id':2,'name':'Ali Khan','age':15},
{'id':3,'name':'Mubashir Munir','age':15}];
   var foundUser =[];
   @override
  void initState() {
    foundUser =data;
    super.initState();
  }
  void Search(String word){
     List<Map<String,dynamic>> results =[];
     if(word.isEmpty){
       results =data;
     }else{
       results=data.where((user)=>user['name'].toLowerCase().contains(word.toLowerCase().toString())).toList();
     }

     setState(() {
       foundUser =results;
     });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(''),),
      body: Column(
      children: [
        TextField(
        onChanged:(word)=> Search(word)),
        Expanded(
          child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context ,index){

            ListTile(
              subtitle: Text(data[index]['age'].toString()),
              title: Text(data[index]['name'].toString()),
              trailing: Text(data[index]['id'].toString()),);
          }),
        ),
      ],
    ),);
  }
}
