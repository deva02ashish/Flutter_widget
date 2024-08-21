
import 'package:flutter/material.dart';

class AbsorbPointerWidget extends StatelessWidget {
  const AbsorbPointerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("AbsobPointer Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AbsorbPointer(
              absorbing: true,
              child: Column(
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                          overlayColor: WidgetStateProperty.all(Colors.blue),
                          backgroundColor: WidgetStateProperty.all(Colors.deepOrange)
                      ),
                      onPressed: (){}, child: const Text("Login")),
                  ElevatedButton(
                      style: ButtonStyle(
                          overlayColor: WidgetStateProperty.all(Colors.teal),
                          backgroundColor: WidgetStateProperty.all(Colors.deepOrange)
                      ),
                      onPressed: (){}, child: const Text("Absorb Pointer Button 2"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
