import 'package:flutter/material.dart';
import 'package:flutter_test/aboutus.dart';
import 'package:flutter_test/contact.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Layout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
        actions: [
          // SearchBar
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
        ],
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
                    Icons.home,
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

                  tileColor: Color.fromARGB(255, 0, 0, 0), // Warna latar belakang
                  leading: Icon(
                    Icons.mail,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Judul
                  Text(
                    'HALLO',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),

                  // Paragraf
                  Text(
                    'Ini adalah web flutter pertama saya.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[700],
                    ),
                  ),

                  SizedBox(height: 20.0),

                  // Button dengan animasi
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan aksi saat tombol ditekan
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      width: 120.0,
                      height: 40.0,
                      alignment: Alignment.center,
                      child: Text(
                        'Tekan Saya!',
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
          ),
        ],
      ),
    );
  }
}
