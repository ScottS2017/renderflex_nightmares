import 'package:flutter/material.dart';
import 'package:renderflex_nightmares/app/app_images.dart';

class ConstraintsExample extends StatelessWidget {

  final String title;

  const ConstraintsExample({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        margin: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.blueAccent,
            style: BorderStyle.solid,
            width: 5,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Image.asset(AppImages.flutterLogo),
      ),
    );
  }
}