import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage(),
    );
  }
}

class Designer {
  const Designer();

  static ButtonStyle buttonStyle() {
    return TextButton.styleFrom(
      backgroundColor: Colors.white,
      padding: const EdgeInsets.all(32),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  void decrement() {
    //TODO
  }

  void increment() {
    //TODO
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Authorized entry',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(40),
              child: Text(
                '0',
                style: TextStyle(
                  fontSize: 100,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: decrement,
                  style: Designer.buttonStyle(),
                  child: const Icon(
                    Icons.remove,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  onPressed: increment,
                  style: Designer.buttonStyle(),
                  child: const Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
