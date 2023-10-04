import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/daftar_mhs.dart';
import 'package:flutter_application_1/detail_mhs.dart';
import 'package:flutter_application_1/profile.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

int _currentIndex = 0;

class _NavBarState extends State<NavBar> {
  void changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final pages = [DaftarMhs(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: DotNavigationBar(
          backgroundColor: Colors.white60,
          currentIndex: _currentIndex,
          onTap: changePage,
          items: [DotNavigationBarItem(icon: Icon(Icons.home)), DotNavigationBarItem(icon: Icon(Icons.person))]),
    );
  }
}
