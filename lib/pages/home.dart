import "package:flutter/material.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // taking navigator params
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalouge App"),
      ),
      body: Center(
        child: Text("welcome ${args['user']} at : ${args['loginTime']}"),
      ),
    );
  }
}
