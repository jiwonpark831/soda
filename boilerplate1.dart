import 'package:flutter/material.dart';

void main () => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(65.0),
        child: AppBar(
          title: const Text ('SODA', 
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              ),
            ),
          backgroundColor: Color(0xff4B6EB1),
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: false,
        )),
        drawer: Drawer(
          child: ListView(
            children: [
              Container(
                height: 161, 
                width: 281,
                child: DrawerHeader(
                decoration: BoxDecoration(color: Color(0xff182949)),
                child: Text('SODA', 
                  style: TextStyle(
                    color: Colors.white, 
                    fontWeight: FontWeight.bold
                    ),
                ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Icon : favorite'),
              ),
              ],
          )),
        body: Center(
          child: Container(
            width: 288, 
            height: 19,
            child: Text('Copyright 2022 SODA  All rights reserved.'),
            ),
          ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(0xffB6734E),
            ),
          ],
          ),
          child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const<BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite'
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search'
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'Information'
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notification'
              ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
        ),
        ),
      );
  }
}

