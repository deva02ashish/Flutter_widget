import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rich text widget"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: RichText(
            text: TextSpan(
                text: "How are ",
                style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.w600),
                children: [
                  TextSpan(text: "You", style: TextStyle(color: Colors.red,fontWeight: FontWeight.w400))
                ]),
          ),
        ),
      ),
    );
  }
}
