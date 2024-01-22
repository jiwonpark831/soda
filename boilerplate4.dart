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

    final GlobalKey<TooltipState> tooltipkey = GlobalKey<TooltipState>();

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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(padding: EdgeInsets.fromLTRB(19, 35, 0, 23), child:
              Text('DAY 8', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),],),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(padding: EdgeInsets.fromLTRB(20, 0, 21, 14), child:
            Cardda(),),],),
            Padding(padding: EdgeInsets.fromLTRB(18, 0, 0, 286), child:
            Chipida(),),




























                Align(alignment: Alignment.bottomRight, child:
                Tooltip(key: tooltipkey,
                triggerMode: TooltipTriggerMode.manual,
                showDuration: const Duration(seconds: 3),
                message: 'Tooltip', child:
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 21, 18), child:
                  FloatingActionButton(
                    onPressed:(){tooltipkey.currentState?.ensureTooltipVisible();},
                    child: Icon(Icons.add, size: 24, color: Colors.white,),
                    shape: CircleBorder(),
                    tooltip: 'Tooltip',
                    backgroundColor: Color(0xff182949),),),),),
                    
                  Align(alignment: Alignment.bottomCenter, child:
                    SizedBox(
                      height: 50,
                      child: Column(children: [
                  Divider(thickness: 1, indent: 13, endIndent: 14,),
                  Align(alignment: Alignment.bottomCenter,
                    child: Text('Copyright 2023 SODA  All rights reserved.', style: TextStyle(fontSize: 14),),),
          

          ],
          ),
        ),
        ),
  

      ],
      ),
      ),
      ),
      );
  }
}



class Cardda extends StatefulWidget {
  const Cardda({super.key});

  @override
  State<Cardda> createState() => _CarddaState();
}

class _CarddaState extends State<Cardda> {
 
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,),
          borderRadius: const BorderRadius.all(Radius.circular(4)),
        ),
        child: SizedBox(
          width: 349,
          height: 197,
          child: Column(
            children: [Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(padding: EdgeInsets.fromLTRB(16, 14, 16, 20), child:
              Text('Boilerplate4', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),),],),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(padding: EdgeInsets.fromLTRB(17, 0, 25, 0), child:
              Text('어느덧 SODA 캠프 8일차가 되었네요!\n여기까지 달려오시느라 수고 많으셨어요:)\n\n아래에 있는 CANCEL과 SUBMIT은 버튼입니다!!', style: TextStyle(fontSize: 14),),),],),
             Row(mainAxisAlignment: MainAxisAlignment.end, children: [ 
                TextButton(
                  style: TextButton.styleFrom(primary: Color(0xff4B6EB1)),
                  onPressed: (){}, child: Text('CANCEL')),
                TextButton(
                  style: TextButton.styleFrom(primary: Color(0xff4B6EB1)),
                  onPressed: (){}, 
                  child: Text('SUBMIT'),),


                  ],)
              
          
              ],)
              
        )
         
      );
  }
}


class Chipida extends StatefulWidget {
  const Chipida({super.key});

  @override
  State<Chipida> createState() => _ChipidaState();
}


class _ChipidaState extends State<Chipida> {

  int selectedChoiceIndex = -1;

  void handleChoiceSelected(int index) {
    setState(() {
      selectedChoiceIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(right: 10), child:
            ChoiceChip(
              side: BorderSide.none,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
              label: Text('SODA'),
              showCheckmark: false,
              selected: selectedChoiceIndex == 0, 
              onSelected: (selected) {
                handleChoiceSelected(0);
              },
              backgroundColor: Color(0xff21212114),
              selectedColor: Color(0xff182949),
              labelStyle: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold,
              ),
            ),),

            Padding(padding: EdgeInsets.only(right: 10), child:
            ChoiceChip(
              side: BorderSide.none,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
              label: Text('CAMP'),
              showCheckmark: false,
              selected: selectedChoiceIndex == 1,
              onSelected: (selected) {
                handleChoiceSelected(1);
              },
              backgroundColor: Color(0xff21212114),
              selectedColor: Color(0xff182949),
              labelStyle: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold,
              ),
            ),),

           Padding(padding: EdgeInsets.only(right: 10), child:
           ChoiceChip(
              side: BorderSide.none,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
              label: Text('FUN'),
              showCheckmark: false,
              selected: selectedChoiceIndex == 2,
              onSelected: (selected) {
                handleChoiceSelected(2);
              },
              backgroundColor: Color(0xff21212114),
              selectedColor: Color(0xff182949),
              labelStyle: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold,
              ),
            ),),

            ChoiceChip(
              side: BorderSide.none,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
              label: Text('FLUTTER'),
              showCheckmark: false,
              selected: selectedChoiceIndex == 3,
              onSelected: (selected) {
                handleChoiceSelected(3);
              },
              backgroundColor: Color(0xff21212114),
              selectedColor: Color(0xff182949),
              labelStyle: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold,
              ),
            ),
          ],
    );
}
}

