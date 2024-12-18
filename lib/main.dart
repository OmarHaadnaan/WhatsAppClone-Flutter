import 'package:flutter/material.dart';
import 'package:whatsapp/pages/calls.dart';
import 'package:whatsapp/pages/chats.dart';
import 'package:whatsapp/pages/communites.dart';
import 'package:whatsapp/pages/statusage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

var currenpage = 0;

class _MyAppState extends State<MyApp> {
  List<Widget> BodySection = [
    Chats(),
    StatusPage(),
    Communites(),
    Calls(),
  ];

  List<Widget> appBarSection = [
    const Text(
      "WhatsApp",
      style: TextStyle(
        color: Colors.green,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
    const Text(
      "Status",
      style: TextStyle(
        color: Colors.green,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
    const Text(
      "Communities",
      style: TextStyle(
        color: Colors.green,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
    const Text(
      "Calls",
      style: TextStyle(
        color: Colors.green,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: appBarSection[currenpage],
          actions: const [
            Icon(
              Icons.camera_alt,
              size: 30,
            ),
            SizedBox(
              width: 15,
            ),
            Icon(
              Icons.search,
              size: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.more_vert,
              size: 30,
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {},
          child: Icon(
            Icons.add_box_rounded,
            color: Colors.white,
            size: 30,
          ),
        ),
        body: BodySection[currenpage],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              currenpage = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green.shade300,
          unselectedItemColor: Colors.black,
          currentIndex: currenpage,
          items: const [
            BottomNavigationBarItem(
              label: 'Chats',
              icon: Icon(
                Icons.chat_sharp,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Status',
              icon: Icon(
                Icons.camera,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Communities',
              icon: Icon(
                Icons.people_sharp,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Calls',
              icon: Icon(
                Icons.call,
              ),
            )
          ],
        ),
      ),
    );
  }
}
