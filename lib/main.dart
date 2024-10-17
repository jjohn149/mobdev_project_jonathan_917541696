import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AuthenticPage(),
    );
  }
}

class AuthenticPage extends StatefulWidget {
  const AuthenticPage({super.key});

  @override
  AuthenticPageState createState() => AuthenticPageState();
}

class AuthenticPageState extends State<AuthenticPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String username = '';
  String password = '';

  bool isValid = false;

  void onChange() {
    setState(() {
      isValid = _formKey.currentState!.validate();
    });
  }

  void login() {
    // Credentials
    const dummyUsername = "mobiledev";
    const dummyPassword = "password";

    // Check if entered credentials match dummy credentials
    if (username == dummyUsername && password == dummyPassword) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Home(),
        ),
      );
    } else {
      // Error message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Invalid username or password'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WeAssist"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Form(
          key: _formKey,
          onChanged: () {
            onChange();
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Username",
                  labelText: "Username",
                  labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                  border: UnderlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter a username";
                  }
                  return null;
                },
                onChanged: (value) {
                  username = value; // Capture the username input
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Password",
                  labelText: "Password",
                  labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                  border: UnderlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter password";
                  }
                  return null;
                },
                obscureText: true,
                onChanged: (value) {
                  password = value; // Capture the password input
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: isValid ? login : null,
                child: const Text("Login"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Sign Up"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
