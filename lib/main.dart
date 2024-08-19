import 'package:flutter/material.dart';
import 'package:flutter_widget/flutter_widget/container_widget.dart';
import 'package:flutter_widget/flutter_widget/flexible_expended_widget.dart';
import 'package:flutter_widget/flutter_widget/rich_text_widget.dart';
import 'package:flutter_widget/flutter_widget/row_column_widget.dart';
import 'package:flutter_widget/flutter_widget/text_widget.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FlexibleExpendedWidget(),
    );
  }
}
