import 'package:flutter/material.dart';
import 'main.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Easy Assist"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("Emergency"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Help"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Meals"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Calender"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Camera"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Map"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AuthenticPage(),
                  ),
                );
              },
              child: const Text("Logout"),
            )
          ],
        ),
      ),
    );
  }
}
