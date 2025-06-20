import 'package:flutter/material.dart';
import 'package:ppkd_b_2/splash_screen.dart';
import 'package:ppkd_b_2/tugas_11_flutter/produk_toko.dart';
import 'package:ppkd_b_2/tugas_15_flutter/login_screen.dart';
import 'package:ppkd_b_2/tugas_15_flutter/register_screen.dart';
// import 'package:ppkd_b_2/meet_2/meet_2.dart';

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

      routes: {
        //   //Harus didaftarkan dulu disini
        "/": (context) => SplashScreen(),
        LoginScreenApi.id: (context) => LoginScreenApi(),
        RegisterScreenAPI.id: (context) => RegisterScreenAPI(),
        // RegisterScreenAPI.id: (context) => RegisterScreenAPI()
        //   // SiswaApp.id: (context) => SiswaApp(),
        //   LoginScreenApp.id: (context) => LoginScreenApp(),
        //   // RegisterScreenApp.id: (context) => RegisterScreenApp(),
        //   // Tugas7FormInputInteraktifDrawer.id:
        //   // (context) => Tugas7FormInputInteraktifDrawer(),
        //   // UserListScreen.id: (context) => UserListScreen(),
        //   FakeStoreScreen.id: (context) => FakeStoreScreen(),

        //   // "/login": (context) => LoginScreen(),
        //   // "/meet_2": (context) => MeetDua(),
        //   // LoginScreenApp.id: (context) => LoginScreenApp(),
        //   // RegisterScreenApp.id: (context) => RegisterScreenApp(),
        //   // MeetTigaA.id: (context) => MeetTigaA(),
        //   // Meet12AInputWidget.id: (context) => Meet12AInputWidget(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const Tugas11WishListBelanja(),
    );
  }
}
// routes: {

//         //Harus didaftarkan dulu disini
//         "/": (context) => LoginScreen(),
//         "/.": (context) => SplashScreen(),
//         "/login": (context) => LoginScreen(),
//         "/meet_2": (context) => MeetDua(),
//         MeetTigaA.id: (context) => MeetTigaA(),
//         Meet12AInputWidget.id: (context) => Meet12AInputWidget(),
//       },

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
