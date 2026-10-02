import 'package:flutter/material.dart';
import 'profile_card.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Identitas Mahasiswa
  final String nimMahasiswa = "20240801021";
  final String namaMahasiswa = "Nama Lengkap Anda"; // Silakan ganti dengan nama Anda
  final String hobiMahasiswa = "Coding & Game";     // Silakan ganti dengan hobi Anda

  @override
  Widget build(BuildContext context) {
    // Digit terakhir = 1 (Ganjil) -> Colors.tealAccent[100]
    int digitTerakhir = int.parse(nimMahasiswa.substring(nimMahasiswa.length - 1));
    bool isGanjil = digitTerakhir % 2 != 0;

    // Skor Aktivitas = 21 + 50 = 71
    int duaDigitTerakhir = int.parse(nimMahasiswa.substring(nimMahasiswa.length - 2));
    int skorDinamis = duaDigitTerakhir + 50;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas Layout Flutter',
      theme: ThemeData(
        scaffoldBackgroundColor: isGanjil
            ? Colors.tealAccent[100]
            : Colors.amber[100],
      ),
      home: HomePage(
        nama: namaMahasiswa,
        nim: nimMahasiswa,
        hobi: hobiMahasiswa,
        skorAktivitas: skorDinamis,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final String nama;
  final String nim;
  final String hobi;
  final int skorAktivitas;

  const HomePage({
    super.key,
    required this.nama,
    required this.nim,
    required this.hobi,
    required this.skorAktivitas,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ProfileCard(
          nama: nama,
          nim: nim,
          hobi: hobi,
          skorAktivitas: skorAktivitas,
        ),
      ),
    );
  }
}