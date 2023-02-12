import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeBar(),
    );
  }
}

class HomeBar extends StatefulWidget {
  @override
  _HomeBarState createState() => _HomeBarState();
}

class _HomeBarState extends State<HomeBar> {
  var _selectedTab = _SelectedTab.map;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: DotNavigationBar(
          backgroundColor: Color.fromARGB(255,18,22,34),
          margin: EdgeInsets.only(left: 10, right: 10),
          currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          dotIndicatorColor: Colors.white,
          unselectedItemColor: Colors.grey[300],
          borderRadius: 25,
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255,17,255,208),
              blurRadius: 5,
              offset: Offset(0,1),
            )
          ],
          // enableFloatingNavBar: false,
          onTap: _handleIndexChanged,
          items: [
            /// Home
            DotNavigationBarItem(
              icon: Icon(Icons.map,),
              selectedColor: Color.fromARGB(255,17,255,208),
            ),

            /// history
            DotNavigationBarItem(
              icon: Icon(Icons.history,),
              selectedColor: Color.fromARGB(255,17,255,208),
            ),

            /// charging
            DotNavigationBarItem(
              icon: Icon(Icons.charging_station_outlined,),
              selectedColor: Color.fromARGB(255,17,255,208),
            ),

            /// Profile
            DotNavigationBarItem(
              icon: Icon(Icons.person,),
              selectedColor: Color.fromARGB(255,17,255,208),
            ),
          ],
        ),
      ),
    );
  }
}

enum _SelectedTab { map, history, charging, person }