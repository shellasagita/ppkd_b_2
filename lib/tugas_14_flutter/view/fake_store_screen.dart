import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ppkd_b_2/meet_22/API/meet_22.dart';
import 'package:ppkd_b_2/meet_22/model/users_model.dart';
import 'package:ppkd_b_2/tugas_14_flutter/API/tugas_14.dart';
import 'package:ppkd_b_2/tugas_14_flutter/model/users_store_model.dart';

class FakeStoreScreen extends StatelessWidget {
  const FakeStoreScreen({super.key});
  static const String id = '/fake_store_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fake Store')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FutureBuilder(
              future: getUsersStore(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasData) {
                  final usersstore = snapshot.data;
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: usersstore?.length ?? 0,
                    itemBuilder: (BuildContext context, int index) {
                      final user = usersstore?[index];
                      return Card(
                        child: ListTile(
                          title: Text(
                            '${user?.title}\n'
                            'IDR ${user?.price}',
                          ),
                          // subtitle: Text('${user?.description}'),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(user?.image ?? ""),
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return Text('Error: ${snapshot.error}');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
