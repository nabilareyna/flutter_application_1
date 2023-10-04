import 'package:flutter/material.dart';
import 'package:flutter_application_1/detail_mhs.dart';
import 'package:flutter_application_1/profile.dart';

class DaftarMhs extends StatelessWidget {
  const DaftarMhs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Mahasiswa",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailMhs()));
                },
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Icon(Icons.person, size: 150),
                      Text(
                        "Nabila Reyna R",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text("230605110093"),
                      Text("Malang, 28 Oktober 2004")
                    ],
                  ),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Icon(Icons.person, size: 150),
                      Text(
                        "Nabila Reyna R",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text("230605110093"),
                      Text("Malang, 28 Oktober 2004")
                    ],
                  ),
                ),
              ),
              Divider(),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                },
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Icon(Icons.person, size: 150),
                      Text(
                        "Nabila Reyna R",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text("230605110093"),
                      Text("Malang, 28 Oktober 2004")
                    ],
                  ),
                ),
              ),
              Divider(),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                },
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Icon(Icons.person, size: 150),
                      Text(
                        "Nabila Reyna",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text("230605110093"),
                      Text("Malang, 28 Oktober 2004")
                    ],
                  ),
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
