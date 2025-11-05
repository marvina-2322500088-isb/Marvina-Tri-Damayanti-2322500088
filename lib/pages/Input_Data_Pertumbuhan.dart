import 'package:flutter/material.dart';

class InputDataPertumbuhan extends StatefulWidget {
  const InputDataPertumbuhan({super.key});

  @override
  State<InputDataPertumbuhan> createState() => _InputDataPertumbuhanState();
}

class _InputDataPertumbuhanState extends State<InputDataPertumbuhan> {
  final _formKey = GlobalKey<FormState>();
  final _namaController = TextEditingController();
  final _usiaController = TextEditingController();
  final _beratController = TextEditingController();
  final _tinggiController = TextEditingController();

  @override
  void dispose() {
    _namaController.dispose();
    _usiaController.dispose();
    _beratController.dispose();
    _tinggiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Input Data Pertumbuhan'), backgroundColor: const Color(0xFF2AB673)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(controller: _namaController, decoration: const InputDecoration(labelText: 'Nama Anak')),
                const SizedBox(height: 12),
                TextFormField(controller: _usiaController, decoration: const InputDecoration(labelText: 'Usia (bulan)'), keyboardType: TextInputType.number),
                const SizedBox(height: 12),
                TextFormField(controller: _beratController, decoration: const InputDecoration(labelText: 'Berat (kg)'), keyboardType: TextInputType.number),
                const SizedBox(height: 12),
                TextFormField(controller: _tinggiController, decoration: const InputDecoration(labelText: 'Tinggi (cm)'), keyboardType: TextInputType.number),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      Navigator.pushNamed(context, '/hasil-diagnosa');
                    }
                  },
                  child: const Text('Simpan & Diagnosa'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}