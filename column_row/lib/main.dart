import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column Row',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.white,
              width: 100.0,
              height: 100.0,
              child: const Text('Container1'),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              color: Colors.blue,
              width: 100.0,
              height: 100.0,
              child: const Text('Container2'),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              color: Colors.red,
              width: 100.0,
              height: 100.0,
              child: const Text('Container3'),
            ),
          ],
        ),
      ),
    );
  }
}
