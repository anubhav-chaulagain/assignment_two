import 'package:assignment_two/screens/area_of_circle_screen.dart';
import 'package:assignment_two/screens/arithmetic_screen.dart';
import 'package:assignment_two/screens/column_screen.dart';
import 'package:assignment_two/screens/container_screen.dart';
import 'package:assignment_two/screens/flutter_layout_screen.dart';
import 'package:assignment_two/screens/palindrome_screen.dart';
import 'package:assignment_two/screens/richtext_screen.dart';
import 'package:assignment_two/screens/simple_interest_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(96, 125, 139, 1),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: WidgetStatePropertyAll(Colors.white70),
                  backgroundColor: WidgetStatePropertyAll(
                    const Color.fromARGB(255, 139, 96, 126),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return ArithmeticScreen();
                      },
                    ),
                  );
                },
                child: Text("Arithmetic"),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: WidgetStatePropertyAll(Colors.white70),
                  backgroundColor: WidgetStatePropertyAll(
                    const Color.fromARGB(255, 139, 96, 96),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return SimpleInterestScreen();
                      },
                    ),
                  );
                },
                child: Text("Simple Interest"),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: WidgetStatePropertyAll(Colors.white70),
                  backgroundColor: WidgetStatePropertyAll(
                    const Color.fromARGB(255, 103, 139, 96),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return AreaOfCircleScreen();
                      },
                    ),
                  );
                },
                child: Text("Area of Circle"),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: WidgetStatePropertyAll(Colors.white70),
                  backgroundColor: WidgetStatePropertyAll(
                    const Color.fromARGB(255, 96, 137, 139),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return PalindromeScreen();
                      },
                    ),
                  );
                },
                child: Text("Palindrome"),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: WidgetStatePropertyAll(Colors.white70),
                  backgroundColor: WidgetStatePropertyAll(
                    const Color.fromARGB(255, 96, 137, 139),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return RichtextScreen();
                      },
                    ),
                  );
                },
                child: Text("Rich Text"),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: WidgetStatePropertyAll(Colors.white70),
                  backgroundColor: WidgetStatePropertyAll(
                    const Color.fromARGB(255, 96, 137, 139),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return FlutterLayoutScreen();
                      },
                    ),
                  );
                },
                child: Text("Flutter Layout"),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: WidgetStatePropertyAll(Colors.white70),
                  backgroundColor: WidgetStatePropertyAll(
                    const Color.fromARGB(255, 96, 137, 139),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return ColumnScreen();
                      },
                    ),
                  );
                },
                child: Text("Column Screen"),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: WidgetStatePropertyAll(Colors.white70),
                  backgroundColor: WidgetStatePropertyAll(
                    const Color.fromARGB(255, 96, 137, 139),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return ContainerScreen();
                      },
                    ),
                  );
                },
                child: Text("Container Screen"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
