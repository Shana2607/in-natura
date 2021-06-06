import 'package:flutter/material.dart';
import 'package:in_natura/constants.dart';
import 'package:in_natura/screens/landingscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,

      ),
      home: const LandingScreen(),
    );
  }
}
