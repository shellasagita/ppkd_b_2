import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ppkd_b_2/meet_22/API/meet_22.dart';
import 'package:ppkd_b_2/meet_22/model/users_model.dart';
import 'package:ppkd_b_2/tugas_14_flutter/API/tugas_14.dart';
import 'package:ppkd_b_2/tugas_14_flutter/model/users_store_model.dart';
import 'package:ppkd_b_2/tugas_14_flutter/view/product_detail_screen.dart';

class FakeStoreScreen extends StatelessWidget {
  const FakeStoreScreen({super.key});
  static const String id = '/fake_store_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fake Store')),
      body: FutureBuilder<List<UsersStore>>(
        future: getUsersStore(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData || snapshot.data!.isEmpty) {
            final usersstore = snapshot.data;
            return ListView.builder(
              itemCount: usersstore?.length ?? 0,
              itemBuilder: (BuildContext context, int index) {
                final user = usersstore?[index];
                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  child: ListTile(
                    title: Text('${user?.title}\nUSD \$${user?.price}'),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        user?.image ?? "",
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // CircleAvatar(
                    //   backgroundImage: NetworkImage(user?.image ?? ""),
                    // ),
                    // Optional subtitle
                    // subtitle: Text(user?.description ?? ''),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => ProductDetailScreen(product: user!),
                        ),
                      );
                    },
                  ),
                );
              },
            );
          } else {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
        },
      ),
    );
  }
}
