import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tentang Aplikasi')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Profile Card App', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(
              'Aplikasi sederhana untuk menampilkan dan mengedit profil pengguna. '
              'Dilengkapi dengan pengaturan tema otomatis (System, Light, Dark) dan halaman informasi.',
            ),
            SizedBox(height: 16),
            Text('Dibuat menggunakan Flutter 💙', style: TextStyle(color: Colors.teal)),
          ],
        ),
      ),
    );
  }
}
