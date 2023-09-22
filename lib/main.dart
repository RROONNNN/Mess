import 'package:flutter/material.dart';

import 'cuocgoi.dart';
import 'danhba.dart';
import 'dataofmesslist.dart';
import 'doanchat.dart';
import 'drawerpage.dart';
import 'itemlistview.dart';
import 'messlist.dart';
import 'storypage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Đoạn chat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late int _selectedIndex;
  @override
  void initState() {
    super.initState();
    _selectedIndex = 0;
  }

  static const List<Widget> _widgetOptions = [
    doanchat(),
    cuocgoi(),
    danhba(),
    storypage(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          elevation: 0,
          useLegacyColorScheme: false,
          selectedItemColor: Colors.blue,
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Stack(children: [
                Icon(
                  Icons.chat_bubble,
                ),
                Positioned(
                  right: 0,
                  child: new Container(
                    padding: EdgeInsets.all(1),
                    decoration: new BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                    child: new Text(
                      '6',
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ]),
              label: 'Đoạn chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.videocam,
              ),
              label: 'Cuộc gọi',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.group,
              ),
              label: 'Danh bạ',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.web_stories,
              ),
              label: 'Tin',
            ),
          ],
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
