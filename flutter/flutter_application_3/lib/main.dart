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
          title: Text("Column & Row Example")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Atas"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.star, color: Colors.red, size: 40),
                  Icon(Icons.star, color: Colors.green, size: 40),
                  Icon(Icons.star, color: Colors.blue, size: 40),
                ],
              ),
              const Text("Bawah"),
            ],
          ),
        ),
        drawer: Drawer( // Menambahkan drawer
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue,),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,fontSize: 24,),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),title: Text('Messages'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.settings),title: Text('Settings'),
              ),
            ], 
          ),
        ),
        bottomNavigationBar: BottomNavigationBar( // Menambahkan bottom navigation bar
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
        ),
      ),
    );
  }
}