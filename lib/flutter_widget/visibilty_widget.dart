import 'package:flutter/material.dart';

class VisibilityWidget extends StatefulWidget {
   VisibilityWidget({super.key});

  @override
  State<VisibilityWidget> createState() => _VisibilityWidgetState();
}

class _VisibilityWidgetState extends State<VisibilityWidget> {
  bool isButton1visible=true;

  bool isButton2visible=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Visibility Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: isButton1visible,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.deepOrange)
                ),
                  onPressed: (){
                  setState(() {
                    isButton1visible=!isButton1visible;
                    isButton2visible=true;
                  });
                  }, child: Text("Button 1")),
            ),
            Visibility(
              visible: isButton2visible,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.blue)
                  ),
                  onPressed: (){
                    setState(() {
                      isButton2visible=!isButton2visible;
                      isButton1visible=true;
                    });
                  }, child: Text("Button 2")),
            ),
          ],
        ),
      ),
    );
  }
}
