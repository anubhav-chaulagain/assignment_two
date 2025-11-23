import 'package:flutter/material.dart';

class FlutterLayoutScreen extends StatelessWidget {
  const FlutterLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Layout"),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          width: double.infinity,
          height: 75,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          padding: EdgeInsets.all(12),
          child: Row(
            children: [
              Spacer(),
              Column(children: [Icon(Icons.call), Text("Call")]),
              Spacer(),
              Column(children: [Icon(Icons.route), Text("Route")]),
              Spacer(),
              Column(children: [Icon(Icons.share), Text("Share")]),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
