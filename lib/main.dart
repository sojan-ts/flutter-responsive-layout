import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: HomePage()),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext contex, BoxConstraints constrains) {
      if (constrains.maxWidth >= 2560) {
        return Container(
            color: Color.fromARGB(255, 255, 62, 62),
            alignment: Alignment.center,
            child: const Text(
              "maxWidth >= 2560",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 35,
              ),
            ));
      }
      if (constrains.maxWidth >= 1440) {
        return Container(
            color: Color.fromARGB(255, 36, 177, 8),
            alignment: Alignment.center,
            child: const Text(
              "maxWidth >= 1440",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 35,
              ),
            ));
      }
      if (constrains.maxWidth >= 1024) {
        return Container(
            color: Color.fromARGB(255, 62, 168, 255),
            alignment: Alignment.center,
            child: const Text(
              "maxWidth >= 1024",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 35,
              ),
            ));
      }
      if (constrains.maxWidth >= 768) {
        return Container(
            color: Color.fromARGB(255, 241, 14, 192),
            alignment: Alignment.center,
            child: const Text(
              "maxWidth >= 768",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 35,
              ),
            ));
      }
      if (constrains.maxWidth >= 425) {
        return Container(
            color: Color.fromARGB(255, 255, 226, 62),
            alignment: Alignment.center,
            child: const Text(
              "maxWidth >= 425",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 35,
              ),
            ));
      }
      if (constrains.maxWidth >= 375) {
        return Container(
            color: Color.fromARGB(255, 240, 106, 29),
            alignment: Alignment.center,
            child: const Text(
              "maxWidth >= 375",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 35,
              ),
            ));
      }
      if (constrains.maxWidth >= 320) {
        return Container(
            color: Color.fromARGB(255, 158, 16, 240),
            alignment: Alignment.center,
            child: const Text(
              "maxWidth >= 320",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 35,
              ),
            ));
      } else {
        return Container(
            color: Color.fromARGB(255, 255, 255, 255),
            alignment: Alignment.center,
            child: const Text(
              "maxWidth < 320",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 35,
              ),
            ));
      }
    });
  }
}
