import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Screen"),
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.amber[50],
      body: SafeArea(
        child: Container(color: Colors.amber, child: Text("I am a container")),
      ),
    );
  }
}
