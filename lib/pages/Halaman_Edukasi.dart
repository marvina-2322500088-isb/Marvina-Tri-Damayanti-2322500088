import 'package:flutter/material.dart';

class HalamanEdukasi extends StatelessWidget {
  const HalamanEdukasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edukasi'), backgroundColor: const Color(0xFF2AB673)),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          ListTile(title: Text('5 Cara Meningkatkan Nafsu Makan Anak')),
          Divider(),
          ListTile(title: Text('Tanda-Tanda Stunting yang Harus Dikenali')),
          Divider(),
          ListTile(title: Text('Panduan Makanan Bergizi untuk Balita')),
          Divider(),
          ListTile(title: Text('Kapan Harus ke Dokter Gizi?')),
        ],
      ),
    );
  }
}