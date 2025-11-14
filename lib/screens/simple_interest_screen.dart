import 'package:flutter/material.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  double principal = 0;
  double rate = 0;
  double time = 0;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Interest"),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(96, 125, 139, 1),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => {principal = double.parse(value)},
              decoration: InputDecoration(
                labelText: "Principal",
                hintText: "10,000",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              onChanged: (value) => {rate = double.parse(value)},
              decoration: InputDecoration(
                labelText: "Rate",
                hintText: "2.5%",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              onChanged: (value) => {time = double.parse(value)},
              decoration: InputDecoration(
                labelText: "Time",
                hintText: "1yr",
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
                    result = (principal * time * rate) / 100;
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
