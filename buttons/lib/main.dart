import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
              ),
              child: const Text(
                'Text Button',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.amber,
              ),
              child: const Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.green,
              ),
              child: const Text('Outlined Button'),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.home,
                color: Colors.purple,
              ),
              label: const Text('Go to Home'),
              style: TextButton.styleFrom(
                minimumSize: const Size.square(
                  90.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
