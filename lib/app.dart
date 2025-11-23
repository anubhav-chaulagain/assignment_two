import 'package:assignment_two/screens/area_of_circle_screen.dart';
import 'package:assignment_two/screens/arithmetic_screen.dart';
import 'package:assignment_two/screens/dashboard_screen.dart';
import 'package:assignment_two/screens/palindrome_screen.dart';
import 'package:assignment_two/screens/richtext_screen.dart';
import 'package:assignment_two/screens/simple_interest_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
    );
  }
}
