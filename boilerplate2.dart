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
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.notifications),
            ),
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.share),
            ),
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.search),
            ),
            ],
          backgroundColor: Color(0xff182949),
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
          ),
          ),
        body: SizedBox(
          height: 665,
          child: Column(children: [
            Container(
              height: 315,
              child:
              ListView(
              children: const <Widget>[
                Card(child: ListTile(
                  contentPadding: EdgeInsets.fromLTRB(16, 11.5, 13, 13.5),
                  leading: Icon(Icons.airplay_outlined, size: 24,),
                  title: Text('This is List tile', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  subtitle: Text('List tile 1', style: TextStyle(fontSize: 14),),
                  ),
                ),
                Card(child: ListTile(
                  contentPadding: EdgeInsets.fromLTRB(16, 11.5, 13, 13.5),
                  leading: Icon(Icons.airplay_outlined, size: 24,),
                  title: Text('This is List tile', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  subtitle: Text('List tile 2', style: TextStyle(fontSize: 14),),
                  ),
                ),
                Card(child: ListTile(
                 contentPadding: EdgeInsets.fromLTRB(16, 11.5, 13, 13.5),
                  leading: Icon(Icons.airplay_outlined, size: 24,),
                  title: Text('This is List tile', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  subtitle: Text('List tile 3', style: TextStyle(fontSize: 14),),
                  ),
                ),
          ],
        ),
        ),
        Align(alignment: Alignment.topLeft,
        child: TextButton(
          style: TextButton.styleFrom(
            primary: Color(0xff182949)),
          onPressed: (){}, 
          child: Text('TEXT BUTTON', style: TextStyle(fontSize: 14)),
          ),),
            ]
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 179,
          child: Column(children: [
            Container(
              child: Align(alignment: Alignment.topLeft, child: IconButton(
                style: IconButton.styleFrom(backgroundColor: Color(0xff182949)),
                onPressed: (){},
                icon: Icon(Icons.settings_rounded), color: Colors.white,),
                ),
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color(0xffFFE8E8)),
                      primary: Color(0xff182949),
                      backgroundColor: Color(0xffFFE8E8),),
                    onPressed: (){}, 
                    child: Text('Outlined Button'),
                  ),
                  FloatingActionButton(
                    onPressed: (){},
                    child: Icon(Icons.add, size: 24, color: Colors.white,),
                    shape: CircleBorder(),
                    backgroundColor: Color(0xff182949),),],),
                Divider(thickness: 1, indent: 13, endIndent: 14,),
                Align(alignment: Alignment.bottomCenter,
                child: Text('Copyright 2022 SODA  All rights reserved.', style: TextStyle(fontSize: 14),),),
          
          
          ],
        ),

      
          
       
    
          
      ),
      ),

      );
  }
}

