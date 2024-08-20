
import 'package:flutter/material.dart';

class ListviewListViewBuilderWidget extends StatelessWidget {
  const ListviewListViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("ListView and ListView Builder"),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context,ind){
          return getElement(ind);
        },
      ),
    );
  }

  Widget getElement(int ind){
    print("Element $ind");
    return Container(
      margin: EdgeInsets.all(15),
      color: Colors.deepOrangeAccent,
      height: 200,
      width: 200,
      child: Center(child: Text("Element $ind")),
    );
  }
}
