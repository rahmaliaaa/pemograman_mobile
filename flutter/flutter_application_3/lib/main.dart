import 'package:flutter/material.dart';

void main() {
  runApp(LiaaApp());
}

class LiaaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Liaaa App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar Scaffold & AppBar"),
          backgroundColor: Colors.blue,
          leading: const Icon(Icons.menu),
          actions: const [
            Icon(Icons.search),
            Icon(Icons.settings),
            Icon(Icons.more_vert),
          ],
        ),
        body: const Center(child: Text("Hello Liaaa!")),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}