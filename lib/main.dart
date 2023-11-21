import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(const MyDemoApp()); 

class MyDemoApp extends StatelessWidget {
  const MyDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black54,         
      ),
      home:  Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Demo"), 
        ),
        body: const HomeScreen(),
        drawer: const Drawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: const Icon(Icons.add),
        ),
      ),
    ); 
  }
}
