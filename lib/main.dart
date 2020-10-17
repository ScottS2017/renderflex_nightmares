import 'package:flutter/material.dart';
import 'package:renderflex_nightmares/widgets/home.dart';

import 'app/app_textstyles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RenderFlex Nightmares',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(title: 'RenderFlex Nightmares'),
    );
  }
}