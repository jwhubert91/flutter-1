import 'package:flutter/material.dart';

// local imports
import 'package:coffee_card/home.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandbox'),
        backgroundColor: Colors.grey,
      ),
      // ROW
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Container(
      //       height: 100,
      //       color: Colors.red,
      //       child: const Text('one'),
      //     ),
      //     Container(
      //       height: 200,
      //       color: Colors.green,
      //       child: const Text('two'),
      //     ),
      //     Container(
      //       height: 300,
      //       color: Colors.blue,
      //       child: const Text('three'),
      //     ),
      //   ],
      // ),
      // COLUMN
      // body: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.stretch,
      //     children: [
      //       Container(
      //         width: 100,
      //         color: Colors.red,
      //         child: const Text('one'),
      //       ),
      //       Container(
      //         width: 200,
      //         color: Colors.green,
      //         child: const Text('two'),
      //       ),
      //       Container(
      //         width: 300,
      //         color: Colors.blue,
      //         child: const Text('three'),
      //       )
      //     ]),
    );
  }
}
