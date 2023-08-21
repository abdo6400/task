import 'package:flutter/material.dart';
import 'randomized_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Task",
        debugShowCheckedModeBanner: false,
        home: RandomizedScreen());
  }
}
