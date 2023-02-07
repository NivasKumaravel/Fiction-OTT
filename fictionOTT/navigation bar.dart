import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fictionott/Fiction%20OTT/Main.dart';
import 'package:flutter/material.dart';

import 'Hollywood.dart';
class nav extends StatefulWidget {
  const nav({Key? key}) : super(key: key);

  @override
  State<nav> createState() => _navState();
}

class _navState extends State<nav> {

  int _a = 0;

  final pages = [
    Main(),
    hollywood(),
  ];

  void b(index)
  {
    setState(() {
      _a=index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:
        ListView(
          children: [
            Container(

              height: MediaQuery.of(context).size.height,
              child:pages[_a],
            ),

          ],
        ),

        bottomNavigationBar: CurvedNavigationBar(
          items: [
            Icon(Icons.home_filled,size: 30,color: Colors.white,),
            Icon(Icons.movie_creation,size: 30,color: Colors.white,),
          ],
          index: _a,
          onTap: b,
          backgroundColor: Colors.grey,
          color: Colors.black,
          animationDuration: Duration(milliseconds: 300),
          height: 50,
        ),


      ),
    );

  }

}
