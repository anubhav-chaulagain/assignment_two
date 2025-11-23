import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  // int first = 0;
  // int second = 0;

  // Controller
  final TextEditingController firstController = TextEditingController(
    text: "1",
  );
  final TextEditingController secondController = TextEditingController(
    text: "2",
  );

  int result = 0;

  // Global key for form state
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Arithmetic Operations"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                controller: firstController,
                decoration: InputDecoration(
                  labelText: "First",
                  hintText: "2",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter first number!";
                  }
                  return null;
                },
              ),
              SizedBox(height: 8),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: secondController,
                decoration: InputDecoration(
                  labelText: "Second",
                  hintText: "4",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter second number!";
                  }
                  return null;
                },
              ),
              SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor: WidgetStatePropertyAll(Colors.black87),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        int first = int.parse(firstController.text);
                        int second = int.parse(secondController.text);
                        result = first + second;
                      });
                    }
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
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        int first = int.parse(firstController.text);
                        int second = int.parse(secondController.text);
                        result = first - second;
                      });
                    }
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
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        int first = int.parse(firstController.text);
                        int second = int.parse(secondController.text);
                        result = first * second;
                      });
                    }
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
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        int first = int.parse(firstController.text);
                        int second = int.parse(secondController.text);
                        result = first ~/ second;
                      });
                    }
                  },
                  child: Text("Div"),
                ),
              ),
              SizedBox(height: 8),
              Text("Result: $result"),
            ],
          ),
        ),
      ),
    );
  }
}
