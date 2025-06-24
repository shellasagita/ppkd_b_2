import 'package:flutter/material.dart';
import 'package:ppkd_b_2/tugas_15_flutter/api/user_api.dart';

class ProfilUserScreen extends StatefulWidget {
  const ProfilUserScreen({super.key});
  static const String id = "/profile_user_screen";

  @override
  State<ProfilUserScreen> createState() => _ProfilUserScreenState();
}

class _ProfilUserScreenState extends State<ProfilUserScreen> {
  Map<String, dynamic>? _userData;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadProfile();
  }

  void _loadProfile() async {
    setState(() => _isLoading = true);
    final profile = await UserService().getProfile();
    setState(() {
      _userData = profile["data"];
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: UserService().getProfile(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            final user = snapshot.data?["data"];
            print(user);
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          final nameController = TextEditingController(
                            text: user?["name"],
                          );
                          return AlertDialog(
                            title: Text('Edit Name'),
                            content: TextField(
                              controller: nameController,
                              decoration: InputDecoration(labelText: 'Name'),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: Text('Cancel'),
                              ),
                              ElevatedButton(
                                onPressed: () async {
                                  bool success = await UserService()
                                      .updateProfile(nameController.text);
                                  if (success) {
                                    Navigator.of(context).pop();
                                    setState(
                                      () {},
                                    ); // Memicu FutureBuilder untuk getProfile lagi
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text('Gagal update nama'),
                                      ),
                                    );
                                  }
                                },
                                child: Text('Save'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text(user?["name"] ?? "sdasd"),
                  ),
                  Text(user?["email"] ?? "sdasd"),
                ],
              ),
            );
          } else {
            return Center(child: Text("Error: ${snapshot.error}"));
          }
        },
      ),
    );
  }
}
