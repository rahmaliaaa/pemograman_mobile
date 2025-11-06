import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(LiaAppCounter());
}

class LiaAppCounter extends StatefulWidget {
  @override
  _LiaAppCounterState createState() => _LiaAppCounterState();
}

class _LiaAppCounterState extends State<LiaAppCounter> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    ProfilePage(),
    CounterPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile & Counter App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline),
              label: 'Counter',
            ),
          ],
        ),
      ),
    );
  }
}

//
// 1️⃣ Halaman Profil (StatelessWidget)
//
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        color: Colors.indigo.shade50,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const FlutterLogo(size: 80),
            const SizedBox(height: 16),
            ClipOval(
              child: Image.asset(
                'assets/images/kucing1.jpg',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const Placeholder(fallbackHeight: 100, fallbackWidth: 100),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              " Rahmalia Mutia Farda",
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "2341760130",
              style: GoogleFonts.poppins(fontSize: 16),
            ),
            Text(
              "D4 Sistem Informasi Bisnis",
              style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey[700]),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.email, color: Colors.indigo),
                SizedBox(width: 8),
                Text("rahmameutia1g@example.com"),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.phone, color: Colors.indigo),
                SizedBox(width: 8),
                Text("+62 821-4100-2043"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//
// 2️⃣ Halaman Counter (StatefulWidget)
//
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _increment() => setState(() => _counter++);
  void _decrement() => setState(() => _counter--);
  void _reset() => setState(() => _counter = 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Angka Sekarang:', style: GoogleFonts.poppins(fontSize: 18)),
            const SizedBox(height: 10),
            Text(
              '$_counter',
              style: GoogleFonts.poppins(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _increment,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo.shade400),
                  child: const Text('+'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _decrement,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo.shade400),
                  child: const Text('-'),
                ),
                const SizedBox(width: 10),
                OutlinedButton(
                  onPressed: _reset,
                  child: const Text('Reset'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            IconButton(
              icon: const Icon(Icons.favorite, color: Colors.pink),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Kamu menekan tombol hati ❤️')),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        backgroundColor: Colors.indigo,
        child: const Icon(Icons.add),
      ),
    );
  }
}
