import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

SnackBarSection(message, context) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    duration: const Duration(seconds: 10),
    action: SnackBarAction(
      label: 'Click',
      onPressed: () {
        if (kDebugMode) {
          print('Action is clicked');
        }
      },
      textColor: Colors.white,
      disabledTextColor: Colors.grey,
    ),
  ));
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Appbar"),
        backgroundColor: Colors.black38,
        actions: [
          IconButton(
            onPressed: () {
              SnackBarSection(" Comments button has been pressed", context);
            },
            icon: const Icon(
              Icons.comment,
            ),
          ),
          IconButton(
            onPressed: () {
              SnackBarSection(" Search button has been pressed", context);
            },
            icon: const Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {
              SnackBarSection(" Settings button has been pressed", context);
            },
            icon: const Icon(
              Icons.settings,
            ),
          ),
        ],
      ),
    );
  }
}
