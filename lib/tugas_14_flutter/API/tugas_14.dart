import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:ppkd_b_2/tugas_14_flutter/model/users_store_model.dart';

Future<List<UsersStore>> getUsersStore() async {
  final response = await http.get(
    Uri.parse('https://fakestoreapi.com/products'),
  );
  if (response.statusCode == 200) {
    final List<dynamic> userJson = json.decode(response.body);
    return userJson.map((json) => UsersStore.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load UsersStore');
  }
}
