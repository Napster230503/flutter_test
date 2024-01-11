import 'package:flutter/material.dart';
import 'package:flutter_test/contact.dart';
import 'package:flutter_test/main.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Row(
        children: [
          // Sidebar
          Container(
            width: 200,
            color: Color.fromARGB(255, 78, 78, 78),
            child: ListView(
              children: [
                
                
                
                ListTile(
                  title: Text('Home'),
                  onTap: () {
                    // Pindah ke halaman About Us
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  tileColor: const Color.fromARGB(255, 0, 0, 0), // Warna latar belakang saat dipilih
                  selected: true, // Menandakan bahwa item dipilih
                  leading: Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                ),
                
                
                
                ListTile(
                  title: Text('About Us'),
                  onTap: () {
                    // Pindah ke halaman About Us
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutUsPage()),
                    );
                  },
                  tileColor: const Color.fromARGB(255, 0, 0, 0), // Warna latar belakang saat dipilih
                  selected: true, // Menandakan bahwa item dipilih
                  leading: Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                ),

                ListTile(
                  title: Text('Contact Us'),
                  onTap: () {
                    // Pindah ke halaman About Us
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContactUsPage()),
                    );
                  },
                  tileColor: const Color.fromARGB(255, 0, 0, 0), // Warna latar belakang saat dipilih
                  selected: true, // Menandakan bahwa item dipilih
                  leading: Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          // Main Content
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Us',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Our company Our company was founded in 2019',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Visi & Misi',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Visi kami adalah menjadi pemimpin industri dalam...',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    'Misi kami adalah memberikan solusi berkualitas tinggi kepada pelanggan...',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Tim Manajemen',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  // Tambahkan informasi tentang tim manajemen di sini
                  // Contoh:
                  ListTile(
                    leading: CircleAvatar(
                      // Foto tim manajemen
                      backgroundImage: AssetImage('assets/images/avatar1.jpg'),
                    ),
                    title: Text('Nama Pemimpin 1'),
                    subtitle: Text('Posisi Pemimpin 1'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/avatar2.jpg'),
                    ),
                    title: Text('Nama Pemimpin 2'),
                    subtitle: Text('Posisi Pemimpin 2'),
                  ),
                  // Lanjutkan menambahkan informasi tim manajemen lainnya
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
