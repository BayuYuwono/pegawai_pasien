import 'package:flutter/material.dart';
import 'add_pegawai.dart';
import 'add_pasien.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sistem Manajemen Rumah Sakit',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: {
        '/addPegawai': (context) => AddPegawai(),
        '/addPasien': (context) => AddPasien(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sistem Manajemen Rumah Sakit'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/addPegawai');
              },
              child: Text('Tambah Pegawai'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/addPasien');
              },
              child: Text('Tambah Pasien'),
            ),
          ],
        ),
      ),
    );
  }
}