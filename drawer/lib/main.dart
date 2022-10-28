import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text('Link'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              arrowColor: Colors.white,
              onDetailsPressed: () {
                print('Detail');
              },
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.transparent,
                foregroundImage: AssetImage('asset/img/main_profile_image.png'),
              ),
              otherAccountsPictures: const [
                CircleAvatar(
                  foregroundImage:
                      AssetImage('asset/img/other_profile_image.png'),
                  backgroundColor: Colors.transparent,
                )
              ],
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                gradient: LinearGradient(
                  colors: [
                    Colors.redAccent,
                    Colors.purple,
                    Colors.blue,
                  ],
                ),
              ),
              accountName: const Text('Jiyeon'),
              accountEmail: const Text('Jiyeon@link.co.kr'),
            ),
            ListTile(
              title: const Text('Home'),
              leading: const Icon(Icons.home),
              onTap: () {
                print('Home');
              },
            ),
            ListTile(
              title: const Text('Maps'),
              leading: const Icon(Icons.location_pin),
              onTap: () {
                print('Maps');
              },
            ),
            ListTile(
              title: const Text('Settings'),
              leading: const Icon(Icons.settings),
              onTap: () {
                print('settings');
              },
            ),
            ListTile(
              title: const Text('Help'),
              leading: const Icon(Icons.support_agent),
              onTap: () {
                print('Help');
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Body'),
      ),
    );
  }
}
