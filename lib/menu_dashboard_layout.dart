// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

final Color backgroundColor = Color.fromARGB(255, 116, 99, 49);

class MenuDashBoardPage extends StatefulWidget {
  const MenuDashBoardPage({super.key});

  @override
  State<MenuDashBoardPage> createState() => _MenuDashBoardPageState();
}

class _MenuDashBoardPageState extends State<MenuDashBoardPage> {
  bool isCollapsed = true;
double screenWidth =0, screenHeight=0;
  Duration duration = const Duration(milliseconds: 300);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: <Widget>[menu(context), dashboard(context)],
      ),
    );
  }

  Widget menu(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              "dashboard",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Message",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'utiltity ',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Funds Transfer ',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }

  Widget dashboard(context) {
    return AnimatedPositioned(
      top: 0.15 * screenHeight,
      bottom: 0.2 * screenWidth,
       left: 0.3 * screenHeight,
       right: -0.1 * screenWidth,
      duration: duration,
      child: Material(
        elevation: 8,
        color: backgroundColor,
        child: Container(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    onTap: () {
                      setState(() {
                        isCollapsed = !isCollapsed;
                      });
                    },
                  ),
                  Text(
                    'My Cards',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
