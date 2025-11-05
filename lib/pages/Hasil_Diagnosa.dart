import 'package:flutter/material.dart';

class HasilDiagnosa extends StatelessWidget {
  const HasilDiagnosa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hasil Diagnosa'), backgroundColor: const Color(0xFF2AB673)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 8),
            Text('Hasil Diagnosa Pertumbuhan', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            Text('Pertumbuhan anak Anda berada dalam kategori normal.\n\nTetap jaga pola makan seimbang.'),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}