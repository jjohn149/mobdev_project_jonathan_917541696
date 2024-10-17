import 'package:flutter/material.dart';
import 'package:we_assist/calender.dart';
import 'package:we_assist/camera.dart';
import 'package:we_assist/emergency.dart';
import 'package:we_assist/help.dart';
import 'package:we_assist/map.dart';
import 'package:we_assist/meals.dart';
import 'main.dart';

class Home extends StatelessWidget {
  final String username;

  const Home({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Easy Assist"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                username,
                style: const TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Emergency(username: username),
                  ),
                );
              },
              child: const Text("Emergency"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Help(username: username),
                  ),
                );
              },
              child: const Text("Help"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Meals(username: username),
                  ),
                );
              },
              child: const Text("Meals"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Calender(username: username),
                  ),
                );
              },
              child: const Text("Calender"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Camera(username: username),
                  ),
                );
              },
              child: const Text("Camera"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Map(username: username),
                  ),
                );
              },
              child: const Text("Map"),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(username: username),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Calender'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Calender(username: username),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Camera'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Camera(username: username),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Emergency'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Emergency(username: username),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Help'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Help(username: username),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Map'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Map(username: username),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Meals'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Meals(username: username),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Logout'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AuthenticPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
