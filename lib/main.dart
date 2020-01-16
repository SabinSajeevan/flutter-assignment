import 'package:flutter/material.dart';

import 'screens/screen1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Assignment',
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Color(0xff202226),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex = 1;

  final List<Widget> _children = [
      Center(
      child: Text("Account",style: TextStyle(color: Colors.white),),
    ),
    Screen1Page(),
    Center(
      child: Text("DashBoard",style: TextStyle(color: Colors.white),),
    ),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: _children[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme
            .of(context)
            .primaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        selectedIconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Container(
                    padding: EdgeInsets.all(8.0),
                    color: _currentIndex == 0 ? Colors.white : null,
                    child: new Icon(Icons.store)
                )
            ),
            title: new Text('Account'),
          ),
          BottomNavigationBarItem(
            icon: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Container(
                    padding: EdgeInsets.all(8.0),
                    color: _currentIndex == 1 ? Colors.white : null,
                    child: new Icon(Icons.event)
                )
            ),
            title: new Text('Events'),
          ),
          BottomNavigationBarItem(
              icon: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Container(
                      padding: EdgeInsets.all(8.0),
                      color: _currentIndex == 2 ? Colors.white : null,
                      child: new Icon(Icons.dashboard)
                  )
              ),
              title: Text('Dashboard')
          )
        ],
      ),
    );
  }
}
