import 'package:flutter/material.dart';
import 'package:renderflex_nightmares/app/app_textstyles.dart';
import 'package:renderflex_nightmares/widgets/broken_example.dart';
import 'file:///D:/Flutter/Presentations/renderflex_nightmares/lib/widgets/slot_machine/fun_with_rows_and_columns.dart';
import 'package:renderflex_nightmares/widgets/constraints_example.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;

  final List<Widget> tabs = [
    ConstraintsExample(),
    BrokenExample(),
    FunWithRowsAndColumns(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RenderFlex Nightmares'),
        backgroundColor: Colors.teal[800],
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 48,
        unselectedFontSize: 40,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        backgroundColor: Colors.teal[800],
        items: [
          BottomNavigationBarItem(

            icon: Icon(Icons.photo_size_select_large, color: Colors.white),
            title: Text(
              'Fits and Sizes',
              style: AppTextStyles.normal14.copyWith(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.broken_image, color: Colors.white),
            title: Text(
              "It's Broken!",
              style: AppTextStyles.normal14.copyWith(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tag_faces, color: Colors.white),
            title: Text(
              'Slot Machine!',
              style: AppTextStyles.normal14.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
