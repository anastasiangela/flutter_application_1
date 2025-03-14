import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profil',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ProfileScreen(), // Menampilkan halaman profil
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50], // Warna latar belakang biru muda
      appBar: AppBar(
        backgroundColor: Colors.blue[900], // Warna AppBar biru tua
        title: const Text('Profil', style: TextStyle(color: Colors.white)),
        centerTitle: true, // Menjadikan judul di tengah
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),

          // Menampilkan gambar profil dari assets
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(
              'assets/pasfoto.jpg',
            ), // Gambar dari folder assets
          ),
          const SizedBox(height: 10),

          // Nama pengguna
          const Text(
            'Anastasia Angela',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),

          // Link website
          const Text(
            'http://www.angela1024.com',
            style: TextStyle(fontSize: 16, color: Colors.blue),
          ),
          const SizedBox(height: 20),

          // Grid menu
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.count(
                crossAxisCount: 2, // 2 kolom per baris
                mainAxisSpacing: 15, // Jarak antar baris
                crossAxisSpacing: 15, // Jarak antar kolom
                children: [
                  buildCustomCard(Icons.gps_fixed, "Singaraja", Colors.green),
                  buildCustomCard(Icons.store, "Bisma Barat", Colors.yellow),
                  buildCustomCard(Icons.music_note, "All Genre", Colors.purple),
                  buildCustomCard(Icons.apartment, "Undiksha", Colors.blue),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Fungsi untuk membuat kartu menu dalam grid
  Widget buildCustomCard(IconData icon, String text, Color iconColor) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15), // Membuat sudut melengkung
        border: Border.all(color: Colors.blue, width: 2), // Border biru
      ),
      child: Column(
        children: [
          Expanded(
            // Menampilkan ikon di tengah
            child: Center(child: Icon(icon, size: 50, color: iconColor)),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: const BoxDecoration(
              color: Colors.blue, // Latar belakang biru di bagian bawah kartu
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.yellow, // Warna teks kuning
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
