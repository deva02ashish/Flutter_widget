import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FlutterMethodChannel extends StatelessWidget {
  const FlutterMethodChannel({super.key});

  static final methodChannel = MethodChannel("userName");

  void callMethodSpecificChannel() async {
    String ans = await methodChannel.invokeMethod("getUserName",{"name":"Deva"});
    print("ans=>$ans");
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Platform channel"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
            ElevatedButton(onPressed: callMethodSpecificChannel, child: Text("Method Channel"))
          ],
        ),
      ),
    );
  }
}
