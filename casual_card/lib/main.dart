import 'package:casual_card/screens/card_screen.dart';
import 'package:casual_card/screens/start_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Casual Card',
      home: StartCard(),
      routes: {
        CardScreen.routeName: (context) => CardScreen(),
      },
    );
  }
}
