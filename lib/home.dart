import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override // We are overriding the inherited version of the function
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Coffee App'),
        backgroundColor: Colors.brown[700],
        centerTitle: true,
      ),
      body: const Text("Hello"),
    );
  }
}
