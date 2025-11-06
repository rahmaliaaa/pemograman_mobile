import 'package:flutter/material.dart';
import 'dart:io'; // untuk Image.file

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
          child: SingleChildScrollView( // biar bisa discroll kalau kepanjangan
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

                const SizedBox(height: 20),

                // ElevatedButton
                ElevatedButton(
                  onPressed: () {
                    print("Elevated Button ditekan!");
                  },
                  child: const Text("Elevated Button"),
                ),

                // TextButton
                TextButton(
                  onPressed: () {
                    print("Text Button ditekan!");
                  },
                  child: const Text("Text Button"),
                ),

                // OutlinedButton
                OutlinedButton(
                  onPressed: () {
                    print("Outlined Button ditekan!");
                  },
                  child: const Text("Outlined Button"),
                ),

                // IconButton
                IconButton(
                  icon: const Icon(Icons.favorite, color: Colors.red),
                  onPressed: () {
                    print("Icon Button ditekan!");
                  },
                ),

                // FloatingActionButton
                FloatingActionButton(
                  onPressed: () {
                    print("Floating Action Button ditekan!");
                  },
                  child: const Icon(Icons.add),
                ),

                const SizedBox(height: 20),

                // flutter logo
                const FlutterLogo(
                  size: 100,
                  style: FlutterLogoStyle.horizontal,
                  textColor: Colors.blue,
                ),

                const SizedBox(height: 20),

                // icon
                const Icon(
                  Icons.home,
                  size: 50,
                  color: Colors.blue,
                ),

                const SizedBox(height: 20),

                // image dari lokal dan network url
                Image.asset("assets/flutter.png", width: 150),
                Image.network(
                  "https://flutter.dev/images/flutter-logo-sharing.png",
                  width: 150,
                ),
                Image.file(File('/path/to/flutter.jpg')),

                const SizedBox(height: 20),

                // placeholder
                const Placeholder(
                  fallbackWidth: 100,
                  fallbackHeight: 100,
                  color: Colors.red,
                ),
              ],
            ),
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
        bottomSheet:,
        // Bottom Navigation Bar
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
          ],
        ),
      ),
    );
  }
}