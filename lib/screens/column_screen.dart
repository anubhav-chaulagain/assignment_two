import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column Screen"),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.yellow,
        width: double.infinity,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextButton(onPressed: () {}, child: const Text("Button 1")),
            ElevatedButton(onPressed: () {}, child: const Text("Button 2")),
            OutlinedButton(onPressed: () {}, child: const Text("Button 3")),
          ],
        ),

        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Column(
        //       children: [
        //         Icon(Icons.star, size: 50),
        //         Icon(Icons.star, size: 50),
        //       ],
        //     ),
        //     Column(
        //       children: [
        //         Icon(Icons.star, size: 50),
        //         Icon(Icons.star, size: 100),
        //         Icon(Icons.star, size: 50),
        //       ],
        //     ),
        //     Column(
        //       children: [
        //         Icon(Icons.star, size: 50),
        //         Icon(Icons.star, size: 50),
        //       ],
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
