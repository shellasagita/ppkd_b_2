import 'package:flutter/material.dart';
import 'package:ppkd_b_2/constant/app_color.dart';
import 'package:flutter/widgets.dart';
import 'package:ppkd_b_2/constant/app_style.dart';
import 'package:ppkd_b_2/tugas_7_flutter/1syaratketentuan.dart';
import 'package:ppkd_b_2/tugas_7_flutter/2modegelap.dart';
import 'package:ppkd_b_2/tugas_7_flutter/3kategoriproduk.dart';
import 'package:ppkd_b_2/tugas_7_flutter/4tanggallahir.dart';
import 'package:ppkd_b_2/tugas_7_flutter/5aturpengingat.dart';

class Tugas7FormInputInteraktifDrawer extends StatefulWidget {
  const Tugas7FormInputInteraktifDrawer({super.key});
  static const String id = '/tugas_7_form_input_interaktif_drawer';

  @override
  State<Tugas7FormInputInteraktifDrawer> createState() =>
      _Tugas7FormInputInteraktifDrawerState();
}

class _Tugas7FormInputInteraktifDrawerState
    extends State<Tugas7FormInputInteraktifDrawer> {
  // Navigation index for Drawer
  int _selectedIndex = 0;
  // static const List<Widget> _screen = [
  //     // Center(child: Text("Home Screen")),
  //     MeetDuaBelasC(),
  //     Meet12AInputWidget(),
  //     // MeetSatu(),
  //     MeetEmpatA(),
  //   ];
  bool isDarkMode = false;

  void _toggleDarkMode(bool value) {
    setState(() {
      isDarkMode = value;
    });
  }

  List<Widget> get _menuTitles => [
    Text(
      'Syarat dan Ketentuan',
      style: AppStyle.fontBold().copyWith(fontSize: 24),
    ),
    Text(
      isDarkMode ? 'Mode Gelap' : 'Mode Terang',
      style: AppStyle.fontBold().copyWith(
        fontSize: 24,
        color: isDarkMode ? Colors.white : Colors.black,
      ),
    ),
    Text(
      'Pilih Kategori Produk',
      style: AppStyle.fontBold().copyWith(fontSize: 24),
    ),
    Text(
      'Pilih Tanggal Lahir',
      style: AppStyle.fontBold().copyWith(fontSize: 24),
    ),
    Text('Atur Pengingat', style: AppStyle.fontBold().copyWith(fontSize: 24)),
  ];

  /// Function select menu on Drawer
  void _selectMenu(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pop(context); //close drawer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Colors.white,
      appBar: AppBar(
        backgroundColor: isDarkMode ? Colors.grey[900] : AppColor.redbata,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back_ios, color: Colors.black),

        //   onPressed: () {},
        // ),
        centerTitle: true,
        title: Text(
          'Registrasi',
          style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
        ),
        iconTheme: IconThemeData(
          color:
              isDarkMode
                  ? Colors.white
                  : Colors.black, // Change icon color here
        ),
        // backgroundColor: AppColor.redbata,
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  _selectedIndex == 0;
                  _selectMenu(0);
                },
                child: Text(
                  'Syarat & Ketentuan',
                  style: AppStyle.fontBold(fontSize: 14),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  _selectedIndex == 1;
                  _selectMenu(1);
                },
                child: Text(
                  'Mode Gelap',
                  style: AppStyle.fontBold(fontSize: 14),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  _selectedIndex == 2;
                  _selectMenu(2);
                },
                child: Text(
                  'Pilih Kategori Produk',
                  style: AppStyle.fontBold(fontSize: 14),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  _selectedIndex == 3;
                  _selectMenu(3);
                },

                child: Text(
                  'Pilih Tanggal Lahir',
                  style: AppStyle.fontBold(fontSize: 14),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  _selectedIndex == 4;
                  _selectMenu(4);
                },
                child: Text(
                  'Atur Pengingat',
                  style: AppStyle.fontBold(fontSize: 14),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Builder(
          builder: (context) {
            switch (_selectedIndex) {
              case 0:
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: _menuTitles[_selectedIndex], //dynamic title
                    ),
                    CheckBoxSyaratKetentuan(),
                  ],
                );

              case 1:
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: _menuTitles[_selectedIndex], //dynamic title
                    ),
                    SwitchModeGelap(
                      isDarkMode: isDarkMode,
                      onChanged: _toggleDarkMode,
                    ),
                  ],
                );
              case 2:
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: _menuTitles[_selectedIndex], //dynamic title
                    ),
                    DropDownKategoriProduk(),
                  ],
                );
              case 3:
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: _menuTitles[_selectedIndex], //dynamic title
                    ),
                    DatepickerTanggallahir(),
                  ],
                );
              case 4:
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: _menuTitles[_selectedIndex], //dynamic title
                    ),
                    TimePickerAturPengingat(),
                  ],
                );

              default:
                return Text('Select a menu');
            }
          },
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   onTap: (value) {
      //     setState(() {
      //       _selectedIndex = value;
      //     });
      //     print("Halaman saat ini : $_selectedIndex");
      //   },
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: AppColor.redbata,
      //   unselectedItemColor: AppColor.black22,
      //   unselectedLabelStyle: AppStyle.fontBold(
      //     fontSize: 10,
      //   ).copyWith(color: AppColor.black22),
      //   selectedLabelStyle: AppStyle.fontBold(
      //     fontSize: 10,
      //   ).copyWith(color: AppColor.black22),
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.info_outline),
      //       label: "Tentang",

      //     ),
      //   ],
      // ),
    );
  }
}
