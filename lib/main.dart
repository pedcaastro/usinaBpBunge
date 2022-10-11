import 'package:bpbunge/pages/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bp bunge',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }


}



