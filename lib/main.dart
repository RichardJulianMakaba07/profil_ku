import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Ku',
      theme: ThemeData(
        colorSchemeSeed: Colors.teal,
        useMaterial3: true,
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil Saya')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Foto profil
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.teal,
              child: Icon(Icons.person, size: 70, color: Colors.white),
            ),
            const SizedBox(height: 16),

            // Nama
            const Text(
              'Richard JM',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),

            // Bio singkat
            const Text(
              'Mahasiswa | Informatika | Unmul',
              style: TextStyle(fontSize: 14, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),

            // Kontak
            const Divider(),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Kontak', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            const ListTile(
              leading: Icon(Icons.email),
              title: Text('richardjm@gmail.com'),
            ),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text('+62 812 3456 7890'),
            ),

            // Sosial media
            const Divider(),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Sosial Media', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.camera_alt),
                SizedBox(width: 16),
                Icon(Icons.code),
                SizedBox(width: 16),
                Icon(Icons.work),
              ],
            ),

            // Skill
            const Divider(),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Skill', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: const [
                Chip(label: Text('Flutter')),
                Chip(label: Text('Dart')),
                Chip(label: Text('Python')),
                Chip(label: Text('UI/UX')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}