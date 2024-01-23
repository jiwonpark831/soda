import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late int selectedPage;
  late final PageController _pageController;

  @override
  void initState() {
    selectedPage = 0;
    _pageController = PageController(initialPage: selectedPage);
  }

  @override
  Widget build(BuildContext context) {
    const pageCount = 3;

    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (page) {
                  setState(() {
                    selectedPage = page;
                  });
                },
                children: <Widget>[
                  Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 36),
                          child: Image.asset(
                              '/Users/parkjiwon/Desktop/flutter/flutter_application/assets/sodaicon.png'),
                        ),
                        Text(
                          'Copyright 2023 SODA.  All rights reserved.',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ])),
                  Center(
                    child: Image.asset(
                        '/Users/parkjiwon/Desktop/flutter/flutter_application/assets/soda1.png'),
                  ),
                  Center(
                    child: Image.asset(
                        '/Users/parkjiwon/Desktop/flutter/flutter_application/assets/soda2.png'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 26),
              child: SizedBox(
                height: 6,
                child: PageViewDotIndicator(
                  currentItem: selectedPage,
                  count: pageCount,
                  unselectedColor: Color(0xffD8D8D8),
                  selectedColor: Color(0xff182949),
                  boxShape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
