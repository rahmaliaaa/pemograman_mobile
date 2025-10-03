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
        appBar: AppBar(title: const Text("Column & Row Example")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Atas"),

              // Baris Icon
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.star, color: Colors.red, size: 40),
                  Icon(Icons.star, color: Colors.green, size: 40),
                  Icon(Icons.star, color: Colors.blue, size: 40),
                ],
              ),

              const Text("Bawah"),

              const SizedBox(height: 20), // spasi antar widget

              // Container dengan margin & padding
              Container(
                margin: const EdgeInsets.all(20), // jarak luar
                padding: const EdgeInsets.all(10), // jarak dalam
                color: Colors.blue,
                child: const Text(
                  "Dengan Margin & Padding",
                  style: TextStyle(color: Colors.white),
                ),
              ),

              // Container dengan border & border radius
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black, width: 3),
                ),
              ),

              const SizedBox(height: 20),

              // Container dengan gradient
              Container(
                width: 200,
                height: 100,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.purple, Colors.pink],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Gradient Container",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Container dengan alignment bottomRight
              Container(
                width: 200,
                height: 100,
                color: Colors.orange,
                alignment: Alignment.bottomRight,
                child: const Text("Sudut kanan bawah"),
              ),
            ],
          ),
        ),

        // Drawer
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ],
          ),
        ),

        // Bottom Navigation Bar
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.school),label: 'School',
            ),
          ],
        ),
      ),
    );
  }
}