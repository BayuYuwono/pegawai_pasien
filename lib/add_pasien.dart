import 'package:flutter/material.dart';
import 'pasien.dart';

class AddPasien extends StatefulWidget {
  @override
  _AddPasienState createState() => _AddPasienState();
}

class _AddPasienState extends State<AddPasien> {
  final _formKey = GlobalKey<FormState>();
  final idController = TextEditingController();
  final nomorRmController = TextEditingController();
  final namaController = TextEditingController();
  final tanggalLahirController = TextEditingController();
  final nomorTeleponController = TextEditingController();
  final alamatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tambah Pasien')),
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
                controller: nomorRmController,
                decoration: InputDecoration(labelText: 'Nomor RM'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan Nomor RM';
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
                controller: alamatController,
                decoration: InputDecoration(labelText: 'Alamat'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan Alamat';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Proses data
                    final pasien = Pasien(
                      id: int.parse(idController.text),
                      nomorRm: nomorRmController.text,
                      nama: namaController.text,
                      tanggalLahir: tanggalLahirController.text,
                      nomorTelepon: nomorTeleponController.text,
                      alamat: alamatController.text,
                    );

                    // Tambahkan logika untuk menyimpan objek Pasien di sini

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Pasien berhasil ditambahkan!')),
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