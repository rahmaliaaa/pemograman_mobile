import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lia App Music Player',
      home: const MusicPlayerPage(),
    );
  }
}

class MusicPlayerPage extends StatefulWidget {
  const MusicPlayerPage({super.key});

  @override
  State<MusicPlayerPage> createState() => _MusicPlayerPageState();
}

class _MusicPlayerPageState extends State<MusicPlayerPage> {
  List<String> lyrics = [
    "temanku semua pada jahat tante",
    "aku lagi susah mereka gak ada",
    "coba kalo lagi jaya....",
    "aku dipuja pujanya tante",
    "~ ~ ~",
    "sudah terbiasa terjadi tante",
    "teman datang ketika lagi butuh saja",
    "coba kalo lagi susah",
    "mereka semua menghilang...... tante",
  ];

  List<String> shownLyrics = [];
  int currentIndex = 0;
  Timer? _timer; // simpan timer supaya bisa stop

  bool isPlaying = false; // status lagu

  void _startLyrics() {
    _timer?.cancel(); // pastikan timer lama berhenti
    shownLyrics.clear(); // reset lirik
    currentIndex = 0;

    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (currentIndex < lyrics.length) {
        setState(() {
          shownLyrics.add(lyrics[currentIndex]);
          currentIndex++;
        });
      } else {
        timer.cancel();
        setState(() {
          isPlaying = false; // selesai otomatis berhenti
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // stop timer kalau halaman ditutup
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Lia Favorit Music"),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Cover + lirik
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Cover
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage("assets/cover.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),

                  // Lirik
                  Expanded(
                    child: ListView.builder(
                      itemCount: shownLyrics.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: Text(
                            shownLyrics[index],
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Judul & artis
            const Text(
              "Tante Culik Aku Dong",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 5),
            const Text(
              "DJ Lia",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),

            // Slider
            Slider(
              value: currentIndex.toDouble(),
              min: 0,
              max: lyrics.length.toDouble(),
              onChanged: (value) {},
              activeColor: Colors.blue,
              inactiveColor: Colors.grey,
            ),

            const SizedBox(height: 20),

            // Tombol kontrol
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 40,
                  color: Colors.white,
                  icon: const Icon(Icons.skip_previous),
                  onPressed: () {},
                ),
                const SizedBox(width: 30),
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: IconButton(
                    iconSize: 50,
                    color: Colors.white,
                    icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                    onPressed: () {
                      setState(() {
                        if (!isPlaying) {
                          // kalau lagi stop, mulai play
                          isPlaying = true;
                          _startLyrics();
                        } else {
                          // kalau lagi play, pause
                          isPlaying = false;
                          _timer?.cancel();
                        }
                      });
                    },
                  ),
                ),
                const SizedBox(width: 30),
                IconButton(
                  iconSize: 40,
                  color: Colors.white,
                  icon: const Icon(Icons.skip_next),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
