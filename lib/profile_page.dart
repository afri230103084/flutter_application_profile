import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Saya'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Card(
              color: Colors.white,
              elevation: 2,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/foto.jpg'),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Afriansyah Septyarno',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Informasi Pribadi
            SectionCard(
              title: 'Informasi Pribadi',
              color: Colors.blue[100]!,
              children: const [
                InfoItem(label: 'Nama', value: 'Afriansyah Septyarno'),
                InfoItem(label: 'Tanggal Lahir', value: '11 September 2005'),
                InfoItem(label: 'Alamat', value: 'Karanganyar, Jawa Tengah'),
                InfoItem(label: 'Email', value: 'afriansyah@gmail.com'),
              ],
            ),
            const SizedBox(height: 12),

            // Informasi Perkuliahan
            SectionCard(
              title: 'Informasi Perkuliahan',
              color: Colors.green[100]!,
              children: const [
                InfoItem(label: 'NIM', value: '230103084'),
                InfoItem(label: 'Program Studi', value: 'Teknik Informatika'),
                InfoItem(label: 'Fakultas', value: 'Ilmu Komputer'),
                InfoItem(
                    label: 'Universitas',
                    value: 'Universitas Duta Bangsa Surakarta'),
              ],
            ),
            const SizedBox(height: 12),

            // Riwayat Pendidikan
            SectionCard(
              title: 'Riwayat Pendidikan',
              color: Colors.orange[100]!,
              children: const [
                InfoItem(label: 'SD', value: 'SD Negeri 1 Plosorejo'),
                InfoItem(label: 'SMP', value: 'SMP Negeri 1 Matesih'),
                InfoItem(label: 'SMK', value: 'SMK Negeri 2 Karanganyar - RPL'),
              ],
            ),
            const SizedBox(height: 12),

          ],
        ),
      ),
    );
  }
}

// Widget untuk Section Card
class SectionCard extends StatelessWidget {
  final String title;
  final List<Widget> children;
  final Color color;

  const SectionCard({
    super.key,
    required this.title,
    required this.children,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Divider(thickness: 1.5),
            const SizedBox(height: 8),
            ...children,
          ],
        ),
      ),
    );
  }
}

// Widget untuk Item Informasi
class InfoItem extends StatelessWidget {
  final String label;
  final String value;

  const InfoItem({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 110,
            child: Text(
              '$label:',
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}
