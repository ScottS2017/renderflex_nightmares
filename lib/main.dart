import 'package:flutter/material.dart';

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
      home: MyHomePage(title: 'RenderFlex Nightmares'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



    int _selectedIndex = 0;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

  PageController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RenderFlex Nightmares'),
        backgroundColor: Colors.teal[800],
      ),
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.green,
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.red,
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.purple,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (value) => _onItemTapped(value),
        backgroundColor: Colors.teal[800],
        items: [
          BottomNavigationBarItem(

            icon: Icon(Icons.fast_rewind, color: Colors.white),
            title: Text(
              'Bottom',
              style: AppTextStyles.normal14.copyWith(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pause, color: Colors.white),
            title: Text(
              'Navigation',
              style: AppTextStyles.normal14.copyWith(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fast_forward, color: Colors.white),
            title: Text(
              'Bar',
              style: AppTextStyles.normal14.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
