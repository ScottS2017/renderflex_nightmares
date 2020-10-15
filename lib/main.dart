import 'package:flutter/material.dart';

import 'app/app_textstyles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    Scaffold(
      appBar: AppBar(
        title: const Text('Top FAB & Bottom Nav Bar'),
        backgroundColor: Colors.teal[800],
      ),
      body: Container(
        height: double.infinity,
      ),
      // TODO 1-3) Give the Scaffold, NOT the Container, a bottomNavigationBar. Make it's onTap "(_) => null", backgroundColor teal[800] and a current index of 0
      bottomNavigationBar: BottomNavigationBar(
        onTap: (_) => null,
        backgroundColor: Colors.teal[800],
        currentIndex: 0,
        items: [
          // TODO 1-4) The BottomNavigationBar takes a list of items. Specifically, BottomNavigationBarItem(s).

          // TODO 1-5) Make the first BottomNavigationBarItem have a white, fast rewind icon and text that says "Bottom"
          BottomNavigationBarItem(
            icon: Icon(Icons.fast_rewind, color: Colors.white),
            title: Text(
              'Bottom',
              // TODO 1-6) Let's get into using our resource files. Also, copyWith is one of the most powerful tools you have. It allows you to add or override parameters in several things, including TextStyle. Here, use the custom resource file class "AppTextStyles" to set the style as "normal14". However, put a dot after the 14 and then add "copyWith". Use it to set the color to white. Then, just for fun, use the copyWith to change the font size to 8 and see how it overrides the size set in normal14. (Now change it back!
              style: AppTextStyles.normal14.copyWith(color: Colors.white),
            ),
          ),
          // TODO 1-7) Next BottomNavigationBarItem: White pause icon, text = "Navigation". Again, use normal14 in white
          BottomNavigationBarItem(
            icon: Icon(Icons.pause, color: Colors.white),
            title: Text(
              'Navigation',
              style: AppTextStyles.normal14.copyWith(color: Colors.white),
            ),
          ),
          // TODO 1-7) Last one: White fast forward icon, text = "Bar". Make the text sizes and colors match
          BottomNavigationBarItem(
            icon: Icon(Icons.fast_forward, color: Colors.white),
            title: Text(
              'Bar',
              style: AppTextStyles.normal14.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
      // TODO 1-8) Now, our FloatingActionButton. onPressed is "(){}", make it teal[300] and set the heroTag to null (it's for hero animations (beyond the scope of this class) It's not normally needed but whenever you have more than one FAB in a page, it becomes necessary). Last, set it's tooltip to "Increment Counter" and the child to an add icon
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal[300],
        heroTag: null,
        tooltip: 'Increment Counter',
        child: Icon(
          Icons.add,
        ),
      ),
      // TODO 1-9) Last, let's move the FAB. Set the floatingActionButtonLocation to FloatingActionButtonLocation.endTop -END
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop, //Change for different locations
    );
  }
}
