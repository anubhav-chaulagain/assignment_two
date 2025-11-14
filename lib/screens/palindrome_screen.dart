import 'package:flutter/material.dart';

class PalindromeScreen extends StatefulWidget {
  const PalindromeScreen({super.key});

  @override
  State<PalindromeScreen> createState() => _PalindromeScreenState();
}

class _PalindromeScreenState extends State<PalindromeScreen> {
  String string = "";
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Palindrome"),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(96, 125, 139, 1),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => {string = value},
              decoration: InputDecoration(
                labelText: "Enter String",
                hintText: "aba",
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
                  int start = 0;
                  int end = string.length - 1;
                  while (start < end) {
                    if (string[start] != string[end]) {
                      setState(() {
                        result = "False";
                      });
                      return;
                    }
                    start++;
                    end--;
                  }
                  setState(() {
                    result = "True";
                  });
                },
                child: Text("Check"),
              ),
            ),
            SizedBox(height: 8),
            Text("Is Palindrome? : $result"),
          ],
        ),
      ),
    );
  }
}
