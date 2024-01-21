import 'dart:math';

import 'package:flutter/material.dart';


void main () => runApp(MaterialApp(home: MyApp(),));

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
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(65.0),
          child: AppBar( 
            title: const Text ('SODA', 
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              ),
            ),
          backgroundColor: Color(0xff182949),
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: false,
          actions: [Switchda(),]

        ),
        ),
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
          child: Column(
              children: [    
                Padding(padding: EdgeInsets.fromLTRB(20, 20, 20, 45), 
                child: Container(
                  width: 350,
                  height: 54,
                  child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xff21212114),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                  hintText: 'Name',
            ),),),),
                Padding(padding: EdgeInsets.fromLTRB(12, 0, 100, 0), child:
                  Radios(),),
                Padding(padding: EdgeInsets.fromLTRB(30, 0, 100, 80), child:
                  Checkboxs(),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('버튼을 눌러 날짜를 선택해주세요.'),
                  Padding(padding: EdgeInsets.fromLTRB(19, 10, 8, 10),),
                  TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(8, 6, 6, 6),
                    shape: BeveledRectangleBorder(),
                    side: BorderSide(color: Color(0xff4B6EB1)),
                    primary: Color(0xff4B6EB1)),
                    child: Text('SELECT DATE', style: TextStyle(fontSize: 14)),
                    onPressed: () async {
                      DateTime? newDate = await showDatePicker(
                        context: context,
                        initialDate: date,
                        firstDate: DateTime(2001),
                        lastDate: DateTime(2030),
                      );
                      if (newDate == null) return;
                      setState(() => date = newDate);
                    },

  
                  ),
                  
                  ],),



          ],
          ),
          ),
          











        bottomNavigationBar: SizedBox(
          height: 96,
          child: Column(children: [
            Align(alignment: Alignment.topRight,child:
                  FloatingActionButton(
                    onPressed:() => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                      title: Text('+ 버튼을 누르셨습니다', style: TextStyle(fontSize: 16),),
                      backgroundColor: Colors.white,
                      shape: BeveledRectangleBorder(),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, '확인'),
                          child: const Text('확인',style: TextStyle(fontSize: 14)),
                        ),
                      ],
                    ),
                    ),
                    child: Icon(Icons.add, size: 24, color: Colors.white,),
                    shape: CircleBorder(),
                    backgroundColor: Color(0xff182949),),),
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




class Switchda extends StatefulWidget {
  const Switchda({super.key});

  @override
  State<Switchda> createState() => _SwitchdaState();
}

class _SwitchdaState extends State<Switchda> {
  bool light = false;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.fromLTRB(0, 0, 16, 16), child:
    Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: Color(0xff4B6EB1),
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
            content: Text('switch를 ON 하였습니다.'),
            action: SnackBarAction(
              label: 'OK',
              onPressed: () {})));
        });
      },
    ),);
  }
}








enum MorF { Male, Female }
class Radios extends StatefulWidget {
  const Radios({super.key});

  @override
  State<Radios> createState() => _RadiosState();
}

class _RadiosState extends State<Radios> {
  MorF? _morF = MorF.Male;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(width: 88, height: 56,
        child: Radio<MorF>(
            activeColor: Color(0xff4B6EB1),
            value: MorF.Male,
            groupValue: _morF,
            onChanged: (MorF? value) {
              setState(() {
                _morF = value;
              });
            },
          ),
        ),
        Text('Male', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
        
        SizedBox(width: 88, height: 56,
        child: Radio<MorF>(
            activeColor: Color(0xff4B6EB1),
            value: MorF.Female,
            groupValue: _morF,
            onChanged: (MorF? value) {
              setState(() {
                _morF = value;
              });
            },
          ),
        ),
        Text('Female', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),



      ],
    );
  }
  }


  class Checkboxs extends StatefulWidget {
  const Checkboxs({super.key});

  @override
  State<Checkboxs> createState() => _CheckboxsState();
}

class _CheckboxsState extends State<Checkboxs> {
  bool? isChecked1 = false;
  bool? isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Checkbox(
          activeColor: Color(0xff4B6EB1),
          checkColor: Colors.white,
          value: isChecked1,
          onChanged: (value) {
            setState(() {
              isChecked1 = value!;
            });
          },
        ),
        Text('Designer   ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
        Checkbox(
          activeColor: Color(0xff4B6EB1),
          checkColor: Colors.white,
          value: isChecked2,
          onChanged: (value) {
            setState(() {
              isChecked2 = value!;
            });
          },
        ),
        Text('Developer', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
      ],
    );
  }
}
