import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:ppkd_b_2/meet_22/model/users_model.dart';

Future<List<Users>> getUsers() async {
  final response = await http.get(
    Uri.parse('https://reqres.in/api/users?page=2'),
  );
  if (response.statusCode == 200) {
    final List<dynamic> userJson = json.decode(response.body)['data'];
    return userJson.map((json) => Users.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load users');
  }
}
