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
        useMaterial3: true,
        platform: TargetPlatform.android,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const RootPage(),
    );
  }
}

// Root Page - StatefulW
class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Challenges App'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Challenge 1',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Button pressed');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
