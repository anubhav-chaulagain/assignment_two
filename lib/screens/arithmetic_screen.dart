import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  int first = 0;
  int second = 0;
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Arithmetic Operations"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => {first = int.parse(value)},
              decoration: InputDecoration(
                labelText: "First",
                hintText: "2",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              onChanged: (value) => {second = int.parse(value)},
              decoration: InputDecoration(
                labelText: "Second",
                hintText: "4",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: WidgetStatePropertyAll(Colors.black87),
                ),
                onPressed: () {
                  setState(() {
                    result = first + second;
                  });
                },
                child: Text("Add"),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: WidgetStatePropertyAll(Colors.black87),
                ),
                onPressed: () {
                  setState(() {
                    result = first - second;
                  });
                },
                child: Text("Subtract"),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: WidgetStatePropertyAll(Colors.black87),
                ),
                onPressed: () {
                  setState(() {
                    result = first * second;
                  });
                },
                child: Text("Mul"),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: WidgetStatePropertyAll(Colors.black87),
                ),
                onPressed: () {
                  setState(() {
                    result = first ~/ second;
                  });
                },
                child: Text("Div"),
              ),
            ),
            SizedBox(height: 8),
            Text("Result: $result"),
          ],
        ),
      ),
    );
  }
}
