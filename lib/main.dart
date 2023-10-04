import 'package:flutter/material.dart';
import 'package:flutter_application_1/daftar_mhs.dart';
import 'package:flutter_application_1/nav_bar.dart';
import 'package:flutter_application_1/profile.dart';

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
      home: NavBar(),
    );
  }
}
