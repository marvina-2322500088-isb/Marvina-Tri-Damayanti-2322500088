import 'package:flutter/material.dart';

class HalamanUtamaDashboard extends StatelessWidget {
  const HalamanUtamaDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sehat Anak'),
        backgroundColor: const Color(0xFF2AB673),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('👋 Selamat datang', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/input-data'),
              child: const Text('Input Data Pertumbuhan'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/hasil-diagnosa'),
              child: const Text('Hasil Diagnosa'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/edukasi'),
              child: const Text('Halaman Edukasi'),
            ),
          ],
        ),
      ),
    );
  }
}