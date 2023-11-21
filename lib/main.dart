import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample Menu And Bottom Navigation bar'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            //     ListTile(
            //       leading: Icon(Icons.book),
            //       title: Text('Chapter 1'),
            //       onTap: () {
            //         // Handle Home item tap
            //         Navigator.pop(context);
            //       },
            //     ),
            //     ListTile(
            //       leading: Icon(Icons.book),
            //       title: Text('Chapter 2'),
            //       onTap: () {
            //         // Handle Settings item tap
            //         Navigator.pop(context);
            //       },
            //     ),
            // Collapsible list
            ExpansionTile(
              leading: Icon(Icons.book),
              title: Text('Chapter 1'),
              children: [
                ListTile(
                  title: Text('Category 1'),
                  onTap: () {
                    // Handle Category 1 tap
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Category 2'),
                  onTap: () {
                    // Handle Category 2 tap
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            ExpansionTile(
              leading: Icon(Icons.book),
              title: Text('Chapter 2'),
              children: [
                ListTile(
                  title: Text('Category 1'),
                  onTap: () {
                    // Handle Category 1 tap
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Category 2'),
                  onTap: () {
                    // Handle Category 2 tap
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/ass2.jpg',
            fit: BoxFit.cover,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
