import 'package:flutter/material.dart';
import 'package:flutter_application_1/detail_mhs.dart';

class DaftarMhs extends StatelessWidget {
  DaftarMhs({super.key});
  @override
  Widget build(BuildContext context) {
    List data = [
      {"name": "Nabila Reyna Rahmadhani", "nim": "230605110093", "ttl": "Malang, 28 Oktober 2004"},
      {"name": "Nabila", "nim": "230605110093", "ttl": "Malang, 28 Oktober 2004"},
      {"name": "Reyna", "nim": "230605110093", "ttl": "Malang, 28 Oktober 2004"},
      {"name": "Rahmadhani", "nim": "230605110093", "ttl": "Malang, 28 Oktober 2004"}
    ];
    return Scaffold(
        appBar: AppBar(
            title: Text(
              "Mahasiswa",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailMhs(
                                  name: data[index]["name"],
                                  nim: data[index]["nim"],
                                  ttl: data[index]["ttl"],
                                )));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    color: Colors.purple.shade300,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Icon(Icons.person, size: 150),
                          Text(
                            data[index]["name"],
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Text(data[index]["nim"]),
                          Text(data[index]["ttl"])
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ));
  }
}
