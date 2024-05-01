import 'package:flutter/material.dart';
import 'listviewpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 60),
            Text(
              'Welcome to',
              style: TextStyle(fontSize: 20, color: Colors.black87),
            ),
            Text(
              'Plan It',
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 60),
            Text(
              'Your Personal task management and planning solution',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 73, 78, 82),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListPage()),
                );
              },
              child: Text(
                'Let’s get started',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(221, 255, 255, 255),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
