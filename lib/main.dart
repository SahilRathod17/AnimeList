import 'package:animelist/Screens/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AnimeList());
}

class AnimeList extends StatelessWidget {
  const AnimeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Zen_Kurenaido',
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
