import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 75.0,
                  backgroundImage: AssetImage("assets/images/galaxy.jpg"),
                ),
                Text(
                  "Our Galaxy",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white,
                    fontFamily: "Lora-Regular",
                  ),
                ),
                Text(
                  "The Milky Way",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white,
                    fontFamily: "Mansalva-Regular",
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 100.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    title: Text(
                      "you can choose to pray.",
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: "Lora-Regular",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    title: Text(
                      "do yoga, send your message with your energy.",
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: "Lora-Regular",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
