import 'package:flutter/material.dart';
import 'package:ppkd_b_2/constant/app_color.dart';
import 'package:ppkd_b_2/constant/app_style.dart';
import 'package:ppkd_b_2/tugas_9_flutter.dart/sepatu_model.dart';

class ModelSepatu extends StatefulWidget {
  const ModelSepatu({super.key});

  @override
  State<ModelSepatu> createState() => _ModelSepatuState();
}

class _ModelSepatuState extends State<ModelSepatu> {
  final List<SepatuModel> produkSepatuSandal = [
    SepatuModel(
      namaProduk: 'Sepatu Olahraga',
      deskripsi: 'Sepatu nyaman untuk olahraga dengan bahan breathable.',
      gambar: 'assets/images/sepatuolahraga.jpg',
    ),
    SepatuModel(
      namaProduk: 'Sandal Pantai',
      deskripsi: 'Sandal santai yang cocok untuk jalan-jalan di pantai.',
      gambar: 'assets/images/sepatuolahraga.jpg',
    ),
    SepatuModel(
      namaProduk: 'Sepatu Formal',
      deskripsi: 'Sepatu kulit elegan untuk acara formal dan kerja.',
      gambar: 'assets/images/sepatuolahraga.jpg',
    ),
    SepatuModel(
      namaProduk: 'Sandal Rumah',
      deskripsi: 'Sandal nyaman untuk dipakai sehari-hari di rumah.',
      gambar: 'assets/images/sepatuolahraga.jpg',
    ),
    SepatuModel(
      namaProduk: 'Sepatu Casual',
      deskripsi:
          'Sepatu kasual yang modis dan ringan untuk aktivitas sehari-hari.',
      gambar: 'assets/images/sepatuolahraga.jpg',
    ),

    // {
    //   'nama': 'Sepatu Olahraga',
    //   'gambar': 'assets/images/sepatuolahraga.jpg',
    //   'deskripsi': 'Sepatu nyaman untuk olahraga dengan bahan breathable.',
    // },
    // {
    //   'nama': 'Sandal Pantai',
    //   'gambar': 'assets/images/sandalpantai.png',
    //   'deskripsi': 'Sandal santai yang cocok untuk jalan-jalan di pantai.',
    // },
    // {
    //   'nama': 'Sepatu Formal',
    //   'gambar': 'assets/images/sepatuformal.jpg',
    //   'deskripsi': 'Sepatu kulit elegan untuk acara formal dan kerja.',
    // },
    // {
    //   'nama': 'Sandal Rumah',
    //   'gambar': 'assets/images/sandalrumah.jpg',
    //   'deskripsi': 'Sandal nyaman untuk dipakai sehari-hari di rumah.',
    // },
    // {
    //   'nama': 'Sepatu Casual',
    //   'gambar': 'assets/images/sepatucasual.jpg',
    //   'deskripsi':
    //       'Sepatu kasual yang modis dan ringan untuk aktivitas sehari-hari.',
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kantong Ajaib Store'),
        centerTitle: true,
        backgroundColor: AppColor.blue3,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
      ),

      // body: ListView.builder(
      //   itemCount: produkSepatuSandal.length,
      //   itemBuilder: (context, index) {
      //     return ModelSepatu(produk: produkSepatuSandal[index]);
      //   },
      // ),
      body: ListView.builder(
        itemCount: produkSepatuSandal.length,
        itemBuilder: (BuildContext context, int index) {
          final item = produkSepatuSandal[index];
          print(index);
          return ListTile(
            leading: Row(
              mainAxisSize:
                  MainAxisSize
                      .min, // important to prevent Row from taking full width
              children: [
                Text('${index + 1}. ', style: AppStyle.fontBold(fontSize: 16)),
              ],
            ),
            title: Text(produkSepatuSandal[index].namaProduk),
            subtitle: Text(item.deskripsi),
            trailing: Image.asset(item.gambar),
            onTap: () {},
          );
        },
      ),
    );
  }
}
