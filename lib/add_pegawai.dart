import 'package:flutter/material.dart';
import 'pegawai.dart';

class AddPegawai extends StatefulWidget {
  @override
  _AddPegawaiState createState() => _AddPegawaiState();
}

class _AddPegawaiState extends State<AddPegawai> {
  final _formKey = GlobalKey<FormState>();
  final idController = TextEditingController();
  final nipController = TextEditingController();
  final namaController = TextEditingController();
  final tanggalLahirController = TextEditingController();
  final nomorTeleponController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tambah Pegawai')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: idController,
                decoration: InputDecoration(labelText: 'ID'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan ID';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: nipController,
                decoration: InputDecoration(labelText: 'NIP'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan NIP';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: namaController,
                decoration: InputDecoration(labelText: 'Nama'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan Nama';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: tanggalLahirController,
                decoration: InputDecoration(labelText: 'Tanggal Lahir'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan Tanggal Lahir';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: nomorTeleponController,
                decoration: InputDecoration(labelText: 'Nomor Telepon'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan Nomor Telepon';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan Email';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan Password';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Proses data
                    final pegawai = Pegawai(
                      id: int.parse(idController.text),
                      nip: nipController.text,
                      nama: namaController.text,
                      tanggalLahir: tanggalLahirController.text,
                      nomorTelepon: nomorTeleponController.text,
                      email: emailController.text,
                      password: passwordController.text,
                    );

                    // Tambahkan logika untuk menyimpan objek Pegawai di sini

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Pegawai berhasil ditambahkan!')),
                    );
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}