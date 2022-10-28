import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'snackbar toastmessage',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final FToast fToast = FToast();

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    fToast.init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar & ToastMessage'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 16.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Snack Bar!'),
                          backgroundColor: Colors.blue,
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                    child: const Text('SnackBar Button'),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Fluttertoast.showToast(
                        msg: 'toast message!',
                        backgroundColor: Colors.red,
                        gravity: ToastGravity.BOTTOM,
                        toastLength: Toast.LENGTH_SHORT,
                      );
                    },
                    child: const Text('Toast Message Button'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
