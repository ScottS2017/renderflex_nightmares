import 'package:flutter/material.dart';
import 'package:renderflex_nightmares/app/app_colors.dart';
import 'package:renderflex_nightmares/app/app_images.dart';
import 'package:renderflex_nightmares/app/app_textstyles.dart';

/// 3) This class is a single set of all our custom icons, without any repeats
class IconSet extends StatelessWidget {
  const IconSet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          height: 100,
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.primaryDarkGreen,
              style: BorderStyle.solid,
              width: 5,
            ),
            borderRadius: BorderRadius.circular(100),
            gradient: LinearGradient(
              colors: [
                Colors.green.shade50,
                Colors.green.shade600,
                Colors.green.shade50,
              ],
              stops: [0.0, 0.5, 1.0],
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
            ),
          ),
          child: Icon(
            Icons.cloud_done,
            size: 80,
            color: Colors.white70,
          ),
        ),
        Container(
          height: 180,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              style: BorderStyle.solid,
              width: 5,
            ),
            borderRadius: BorderRadius.circular(100),
            gradient: LinearGradient(
              colors: [
                Colors.purple.shade300,
                Colors.purple.shade900,
              ],
              stops: [0.0, 1.0],
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
            ),
          ),
          child: RotatedBox(
            quarterTurns: 1,
            child: Text(
              'Purple\nPeople\nEater!',
              style: AppTextStyles.normal30.copyWith(
                color: Colors.white,
                shadows: [
                  const Shadow(
                    blurRadius: 3,
                    color: Colors.black87,
                    offset: Offset(-3, 3),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          height: 180,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(
              style: BorderStyle.solid,
              color: const Color(0xFFBBBBBB),
              width: 3,
            ),
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              const BoxShadow(
                color: Colors.black87,
                blurRadius: 12,
                offset: Offset(4, 6),
              ),
            ],
            gradient: const RadialGradient(
              colors: [
                Color(0xFF01D9FE),
                Color(0xFF0185D0),
                Color(0xFFFB7EE4),
                Color(0xFFB7459C),
              ],
              stops: [
                0.3,
                0.5,
                0.8,
                1,
              ],
              center: Alignment(0.0, 1.3),
              focal: Alignment(0.0, 0.9),
              focalRadius: 2.0,
            ),
          ),
          child: Icon(
            Icons.audiotrack,
            size: 132,
            color: Colors.black38,
          ),
        ),
        AspectRatio(
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
        ),
        Container(
          height: 180,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(100),
            gradient: SweepGradient(
              colors: [
                Colors.red.shade200,
                Colors.red.shade500,
                Colors.red.shade900,
                Colors.red.shade500,
                Colors.red.shade200,
              ],
              stops: [0.0, 0.25, 0.5, 0.75, 1.0],
            ),
          ),
        ),
        Container(
          height: 180,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(
              style: BorderStyle.solid,
              color: const Color(0xFFBBBBBB),
              width: 3,
            ),
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              const BoxShadow(
                color: Colors.black87,
                blurRadius: 12,
                offset: Offset(4, 6),
              ),
            ],
            gradient: const SweepGradient(
              colors: [
                Color(0xFFFB7EE4),
                Color(0xFFB7459C),
                Color(0xFF01D9FE),
                Color(0xFF0185D0),
                Color(0xFFFB7EE4),
              ],
              stops: [0.0, 0.25, 0.5, 0.75, 1],
            ),
          ),
          child: Icon(
            Icons.audiotrack,
            size: 132,
            color: Colors.white24,
          ),
        ),
      ],
    );
  }
}