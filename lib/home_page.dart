import 'package:client/widgets/drop_down.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Footwear Store'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.login_outlined))
      ],),
      body: Column(children: [
        SizedBox(height: 50,
        child: ListView.builder(scrollDirection: Axis.horizontal,
          itemCount: 10,
            itemBuilder: (context,int){
              return const Padding(
                padding: EdgeInsets.all(5.0),
                child: Chip(label: Text("Category")),
              );
            }),
        ),
        Row(children: [
          Expanded(child: DropDown(list: ['Rs:low to high','Rs: high to low'], dropdowntext: 'Rs:low to high', OnSelect: (val){}))

        ],)
       ]),
    );
  }
}
