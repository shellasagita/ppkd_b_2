import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilLengkap extends StatelessWidget {
  const ProfilLengkap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text(
          "Profil Lengkap",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: CupertinoColors.systemYellow,
                    backgroundImage: AssetImage('assets/images/lizard.jpg'),
                  ),
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: CupertinoColors.systemYellow,
                    backgroundImage: AssetImage(
                      'assets/images/wonder_woman.jpg',
                    ),
                  ),
                ],
              ),

              ColoredBox(color: Colors.black12),
            ],
          ),
          Container(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 4),
              Text(
                "Wonder Woman",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Container(
            color: Colors.amberAccent,
            margin: EdgeInsets.symmetric(horizontal: 12),
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                Icon(Icons.email),
                SizedBox(width: 8),
                Text('wonder.women@gmail.com'),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            color: Colors.amberAccent,
            margin: EdgeInsets.symmetric(horizontal: 12),
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                Spacer(),
                Icon(Icons.call),
                SizedBox(width: 8),
                Text('0812-3456-7890'),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(4),
                  color: Colors.black,
                  height: 36,
                  width: 40,
                  child: Center(
                    child: Text(
                      "Postingan",
                      style: TextStyle(color: Colors.amberAccent),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(4),
                  color: Colors.amberAccent,
                  height: 36,
                  width: 40,
                  child: Center(child: Text("Followers")),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 200,
            width: 400,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Pahlawan super Amerika Serikat tahun 2017 yang berdasarkan DC Comics karakter dengan nama yang sama, yang didistribusikan oleh Warner Bros. Pictures. ',
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(color: Colors.amber),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(width: 50),
            Icon(Icons.search),
            SizedBox(width: 100),
            Icon(Icons.home),
            SizedBox(width: 100),
            Icon(Icons.account_circle),
          ],
        ),
      ),
    );
  }
}
