import 'package:flutter/material.dart';
import 'package:ppkd_b_2/constant/app_color.dart';
import 'package:ppkd_b_2/constant/app_style.dart';
import 'package:ppkd_b_2/tugas_7_flutter/tugas_7_flutter.dart';

class Tugas8BottomNavigasiBar extends StatefulWidget {
  const Tugas8BottomNavigasiBar({super.key});

  @override
  State<Tugas8BottomNavigasiBar> createState() =>
      _Tugas8BottomNavigasiBarState();
}

class _Tugas8BottomNavigasiBarState extends State<Tugas8BottomNavigasiBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const Tugas7FormInputInteraktifDrawer(), // Halaman dengan Drawer & Form
    const AboutPage(), // Halaman Tentang Aplikasi
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          print("Halaman saat ini : $_selectedIndex");
        },
        currentIndex: _selectedIndex,
        selectedItemColor: AppColor.redbata,
        unselectedItemColor: AppColor.black22,
        unselectedLabelStyle: AppStyle.fontBold(
          fontSize: 10,
        ).copyWith(color: AppColor.black22),
        selectedLabelStyle: AppStyle.fontBold(
          fontSize: 10,
        ).copyWith(color: AppColor.black22),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: "Tentang",
          ),
        ],
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Tentang Aplikasi'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Aplikasi Form Input',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Aplikasi ini dibuat untuk mengumpulkan data pengguna melalui form.',
            ),
            SizedBox(height: 20),
            Text('Pembuat: Shella Sagita Theo'),
            Text('Versi: 1.0.0'),
          ],
        ),
      ),
    );
  }
}
