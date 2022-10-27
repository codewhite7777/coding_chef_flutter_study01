import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'charactor card',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pikachu'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.amber[300],
      ),
      backgroundColor: Colors.amber[400],
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
        children: [
          const Center(
            child: CircleAvatar(
              radius: 120.0,
              foregroundImage: AssetImage('asset/img/main_image.gif'),
            ),
          ),
          Divider(
            color: Colors.grey[850],
            height: 60.0,
            thickness: 0.5,
            endIndent: 30.0,
          ),
          const Text(
            'Name',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            'Pikachu',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28.0,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            'Level',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            'Lv.4',
            style: TextStyle(
              fontSize: 28.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            children: const [
              Icon(
                Icons.check_circle_outline_outlined,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text('Body Blow'),
            ],
          ),
          Row(
            children: const [
              Icon(
                Icons.check_circle_outline_outlined,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text('Thunder Wave'),
            ],
          ),
          Row(
            children: const [
              Icon(
                Icons.check_circle_outline_outlined,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text('Tail Whip'),
            ],
          ),
          const Center(
            child: CircleAvatar(
              radius: 150.0,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('asset/img/bottom_image.png'),
            ),
          ),
        ],
      ),
    );
  }
}
