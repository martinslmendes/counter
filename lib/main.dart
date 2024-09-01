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
    content: Text('The counter cannot be less than zero'),
    behavior: SnackBarBehavior.floating,
  );

  void decrement() {
    setState(() {
      if (isEmpty) {
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

  bool get isEmpty => count <= 0;

  bool get isFull => count >= 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isFull ? Colors.red : Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            isFull ? 'Full' : 'Authorized entry',
            style: const TextStyle(
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
