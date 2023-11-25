import "package:flutter/material.dart";
import "package:flutter_app1/widgets/drawer.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // taking navigator params
    // final Map<String, dynamic> args =
    //     ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalouge App"),
      ),
      drawer: const CatalogueDrawer(),
      body: const Center(child: Text("Welcome to 30 days of flutter")),
    );
  }
}
