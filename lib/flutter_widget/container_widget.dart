
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(child: Text("Widget",style: TextStyle(color: Colors.white),)),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              width: 2,
              color: Colors.deepOrangeAccent,
            ),
            gradient:const LinearGradient(begin: Alignment.topCenter,
                end: Alignment.bottomCenter,

                colors: [
              Colors.amber,
              Colors.pinkAccent
            ],
            )
          ),
          child: Text("Container Widget"),
        ),
      ),
    );
  }
}
