
import 'package:flutter/material.dart';

class FlexibleExpendedWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flexible and Expende"),
      ),
      body: Container(
        color: Colors.teal,
        child: Column(
          children: [
            Container(
              color: Colors.lightGreen,
                child: Text("Flexible 1")),
            Flexible(
              fit: FlexFit.loose,
              child: Container(
                color: Colors.deepOrange,
                  child: Text("Flexible 2 Flexible 2 Flexible 2 Flexible 2 Flexible 2 Flexible 2 Flexible 2")),
            ),
          ],
        ),
      ),
    );
  }
}
