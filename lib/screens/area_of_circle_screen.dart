import 'package:flutter/material.dart';

class AreaOfCircleScreen extends StatefulWidget {
  const AreaOfCircleScreen({super.key});

  @override
  State<AreaOfCircleScreen> createState() => _AreaOfCircleScreenState();
}

class _AreaOfCircleScreenState extends State<AreaOfCircleScreen> {
  double radius = 0;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Area of Circle"),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(96, 125, 139, 1),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => {radius = double.parse(value)},
              decoration: InputDecoration(
                labelText: "Radius",
                hintText: "7",
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
                  foregroundColor: WidgetStatePropertyAll(Colors.white70),
                  backgroundColor: WidgetStatePropertyAll(
                    const Color.fromRGBO(96, 125, 139, 1),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    result = 3.14 * radius * radius;
                  });
                },
                child: Text("Calculate"),
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
