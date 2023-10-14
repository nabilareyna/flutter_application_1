import 'package:flutter/material.dart';
import 'package:flutter_application_1/profile.dart';

class DetailMhs extends StatelessWidget {
  final String name;
  final String nim;
  final String ttl;
  const DetailMhs({super.key, required this.name, required this.nim, required this.ttl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail Mahasiswa",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
            color: Colors.black),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ));
            },
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Icon(Icons.person, size: 150),
                  Text(
                    name,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(nim),
                  Text(ttl),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("back")),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
