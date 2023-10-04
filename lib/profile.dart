import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(50),
            width: 500,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 85,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage("assets/images/foto.jpg"),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25, 0, 25, 25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Nabila Reyna Rahmadhani",
                      style: TextStyle(fontSize: 32),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.yellow,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.email_outlined),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "nabilareynarahmadhani@gmail.com",
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.location_on_outlined),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Malang",
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.call_outlined),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "081335368263",
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
