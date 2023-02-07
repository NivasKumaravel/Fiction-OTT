


import 'package:fictionott/Fiction%20OTT/Hollywood.dart';
import 'package:fictionott/Fiction%20OTT/Main.dart';
import 'package:fictionott/Fiction%20OTT/movie%20list1.dart';
import 'package:fictionott/Fiction%20OTT/navigation%20bar.dart';
import 'package:fictionott/Fiction%20OTT/video%20page/Adventure.dart';
import 'package:fictionott/Fiction%20OTT/video%20page/Horror.dart';
import 'package:fictionott/Fiction%20OTT/Page%201.dart';
import 'package:fictionott/Fiction%20OTT/Personal%20info.dart';
import 'package:fictionott/Fiction%20OTT/loginpage.dart';
import 'package:fictionott/Fiction%20OTT/video%20page/Popular%20comedy%20movies.dart';
import 'package:fictionott/Fiction%20OTT/video%20page/Triller.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';





void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) => ResponsiveWrapper.builder(
          child,
          maxWidth: 1200,
          minWidth: 480,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(480, name: MOBILE),
            ResponsiveBreakpoint.autoScale(1700, name: TABLET),
            ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(2460, name: "4k"),
          ],
          background: Container(color: Color(0xFFF5F5F5))),
      initialRoute: "/",

      title: 'Fiction OTT',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const login(),
    );
  }
}
