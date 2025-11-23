import 'package:flutter/material.dart';

class RichtextScreen extends StatelessWidget {
  const RichtextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rich Text"),
        backgroundColor: Colors.blueGrey,
      ),
      body: RichText(
        text: const TextSpan(
          text: "",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.normal,
          ),
          children: <TextSpan>[
            TextSpan(
              text: "H",
              style: TextStyle(
                color: Colors.red,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: "ello ",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.black87,
                fontSize: 30,
              ),
            ),
            TextSpan(
              text: "bold",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.orange,
                fontSize: 30,
              ),
            ),
            TextSpan(
              text: " world!",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.black87,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
