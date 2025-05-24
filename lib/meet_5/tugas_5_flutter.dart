import 'package:flutter/material.dart';

class Tugas5HalamanInteraksi extends StatefulWidget {
  const Tugas5HalamanInteraksi({super.key});

  @override
  State<Tugas5HalamanInteraksi> createState() => _Tugas5HalamanInteraksiState();
}

class _Tugas5HalamanInteraksiState extends State<Tugas5HalamanInteraksi> {
  String Nama = '';
  bool isLiked = false;
  bool showDescription = false;
  int counter = 0;
  bool showTextInkwell = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFFE99A),
        centerTitle: true,
        title: Text(
          'Halaman Interaktif Pengguna',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 12),
          Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffFF9898),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  print('Nama saya: Kecap Manis');
                  setState(() {
                    Nama = Nama.isEmpty ? 'Nama saya: Kecap Manis' : '';
                  });

                  print('Tampilkan');
                },
                child: Text(
                  'Tampilkan Nama',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(width: 16),
              Text(Nama),
              const SizedBox(height: 20),
            ],
          ),
          // IconButton
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: isLiked ? Colors.red : Colors.grey,
            ),
            onPressed: () {
              setState(() {
                isLiked = !isLiked;
              });
              print('Disukai');
            },
          ),
          if (isLiked) const Text('Disukai'),
          const SizedBox(height: 20),

          // TextButton
          TextButton(
            onPressed: () {
              setState(() {
                showDescription = !showDescription;
              });
            },
            child: const Text('Lihat Selengkapnya'),
          ),
          if (showDescription)
            const Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text(
                'Ini adalah deskripsi tambahan yang ditampilkan ketika tombol ditekan.',
              ),
            ),
          const SizedBox(height: 20),

          //FloatingActionButton
          Text('Counter: $counter'),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                counter++;
              });
            },
          ),
          const SizedBox(height: 20),

          //Inkwell
          InkWell(
            onTap: () {
              setState(() {
                showTextInkwell = !showTextInkwell;
                print('Kotak disentuh');
              });
            },
            child: Container(height: 100, width: 100, color: Color(0xffFFD586)),
          ),
          Text(showTextInkwell ? 'tampil' : ''),
          const SizedBox(height: 20),

          GestureDetector(
            child: Text('Tekan Aku'),
            onTap: () {
              print('Ditekan sekali');
            },
            onDoubleTap: () {
              print("Ditekan dua kali");
            },
            onLongPress: () {
              print('Tahan Lama');
            },
          ),
        ],
      ),
    );
  }
}
