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

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int count = 0;

  static SnackBar unsignedLimit = const SnackBar(
    content: Text('zero limit'),
    behavior: SnackBarBehavior.floating,
  );

  void decrement() {
    setState(() {
      if (count <= 0) {
        ScaffoldMessenger.of(context).showSnackBar(unsignedLimit);
      } else {
        count--;
      }
    });
  }

  void increment() {
    setState(() {
      count++;
    });
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
          Padding(
            padding: const EdgeInsets.all(40),
            child: Text(
              count.toString(),
              style: const TextStyle(
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
      ),
    );
  }
}
