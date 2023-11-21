import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const pi = 3.142;

  TextStyle _paraTextStyle(double fsize, FontWeight fweight) {
    return TextStyle(
        fontSize: fsize,
        fontWeight: fweight,
        color: const Color.fromARGB(255, 110, 65, 6));
  }

  // Methods in Dart Programing language.
  // method without args
  String _greetMessage() {
    String msg = "Welcome to the Home Screen.";
    return msg;
  }

  // method with optional args
  double _calculateAreaOfCircle({double rad = 1}) {
    double area = 0.0;
    area = pi * rad * rad;
    return area;
  }

  // method with required args
  double _calculateAreaOfRectangle({required double l, required double b}) {
    double area = 0.0;
    area = l * b;
    return area;
  }

  @override
  Widget build(BuildContext context) {
    double radius = 12;
    double length = 12;
    double breadth = 12;

    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Demo")),
      body: Column(
        children: <Widget>[
          // space
          const Spacer(flex: 2),

          // greet
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 0.0,
                vertical: 0.0,
              ),
              child: Text(
                _greetMessage(),
                style: _paraTextStyle(24.0, FontWeight.w700),
              ),
            ),
          ),

          // greet

          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18.0,
                vertical: 0.0,
              ),
              child: Text(
                "Area of Circle without passing value of radius is ${_calculateAreaOfCircle()}",
                style: _paraTextStyle(18.0, FontWeight.w500),
              ),
            ),
          ),

          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18.0,
                vertical: 0.0,
              ),
              child: Text(
                "Area of Circle with radius: $radius is ${_calculateAreaOfCircle(rad: radius)}",
                style: _paraTextStyle(18.0, FontWeight.w500),
              ),
            ),
          ),

          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18.0,
                vertical: 0.0,
              ),
              child: Text(
                "Area of Rectangle with length: $length and breadth: $breadth is ${_calculateAreaOfRectangle(l: length, b: breadth)}",
                style: _paraTextStyle(18.0, FontWeight.w500),
              ),
            ),
          ),

          // space
          const Spacer(flex: 2)
        ],
      ),
    );
  }
}
