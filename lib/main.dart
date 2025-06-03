import 'package:flutter/material.dart';
import 'package:ppkd_b_2/meet_1/meet_1.dart';
import 'package:ppkd_b_2/meet_1/tugas_1_flutter.dart';
import 'package:ppkd_b_2/meet_11/login_screen.dart';
import 'package:ppkd_b_2/tugas_10_flutter/tugas_10_flutter.dart';
import 'package:ppkd_b_2/tugas_7_flutter/1syaratketentuan.dart';
import 'package:ppkd_b_2/tugas_7_flutter/2modegelap.dart';
import 'package:ppkd_b_2/tugas_7_flutter/3kategoriproduk.dart';
import 'package:ppkd_b_2/tugas_7_flutter/4tanggallahir.dart';
import 'package:ppkd_b_2/tugas_7_flutter/5aturpengingat.dart';
import 'package:ppkd_b_2/tugas_7_flutter/tugas_7_flutter.dart';
import 'package:ppkd_b_2/meet_2/meet_2.dart';
import 'package:ppkd_b_2/meet_2/tugas_2_flutter.dart';
import 'package:ppkd_b_2/meet_3/meet_3a.dart';
import 'package:ppkd_b_2/meet_4/meet_4a.dart';
import 'package:ppkd_b_2/meet_4/tugas_3_flutter.dart';
import 'package:ppkd_b_2/meet_4/tugas_4_flutter.dart';
import 'package:ppkd_b_2/meet_5/meet_5.dart';
import 'package:ppkd_b_2/meet_5/tugas_5_flutter.dart';
import 'package:ppkd_b_2/meet_5/tugas_6_flutter.dart';
import 'package:ppkd_b_2/tugas_7_flutter/tugas_8_flutter.dart';
import 'package:ppkd_b_2/tugas_9_flutter.dart/list.dart';
import 'package:ppkd_b_2/tugas_9_flutter.dart/list_of_map.dart';
import 'package:ppkd_b_2/tugas_9_flutter.dart/tugas_9_flutter.dart';
// import 'package:ppkd_b_2/meet_2/meet_2.dart';
import 'package:ppkd_b_2/meet_12/meet_12a.dart';
import 'package:ppkd_b_2/meet_12/meet_12b.dart';
import 'package:ppkd_b_2/meet_12/meet_12c.dart';
import 'package:ppkd_b_2/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      // routes: {
      //   //Harus didaftarkan dulu disini
      //   "/": (context) => LoginScreen(),
      //   "/.": (context) => SplashScreen(),
      //   "/login": (context) => LoginScreen(),
      //   "/meet_2": (context) => MeetDua(),
      //   MeetTigaA.id: (context) => MeetTigaA(),
      //   Meet12AInputWidget.id: (context) => Meet12AInputWidget(),
      // },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Tugas10FormulirKelasPendaftaranKelas(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
