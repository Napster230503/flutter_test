import 'package:flutter/material.dart';
import 'package:flutter_test/aboutus.dart';
import 'package:flutter_test/main.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
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
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Judul
                  Text(
                    'Contact Us',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),

                  // Paragraf
                  Text(
                    'Have any questions or suggestions? Feel free to contact us!',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[700],
                    ),
                  ),

                  SizedBox(height: 20.0),

                  // Formulir Kontak
                  Container(
                    width: 300,
                    child: Column(
                      children: [
                        // Nama
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Nama',
                            icon: Icon(Icons.person),
                          ),
                        ),
                        SizedBox(height: 16),

                        // Email
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Email',
                            icon: Icon(Icons.email),
                          ),
                        ),
                        SizedBox(height: 16),

                        // Pesan
                        TextFormField(
                          maxLines: 4,
                          decoration: InputDecoration(
                            labelText: 'Pesan',
                            icon: Icon(Icons.message),
                          ),
                        ),
                        SizedBox(height: 16),

                        // Tombol Kirim dengan animasi
                        ElevatedButton(
                          onPressed: () {
                            // Aksi saat tombol diklik
                            // Misalnya, validasi formulir atau pengiriman pesan
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            width: 120.0,
                            height: 40.0,
                            alignment: Alignment.center,
                            child: Text(
                              'Kirim',
                              style: TextStyle(fontSize: 16.0),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20.0),

                  // Animasi sederhana
                  AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: 200.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                      color: Colors.green, // Ubah warna sesuai keinginan
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    child: Center(
                      child: Text(
                        'Kirim Pesan',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
