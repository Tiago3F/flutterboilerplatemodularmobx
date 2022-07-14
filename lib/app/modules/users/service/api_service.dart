import 'dart:convert';

import '../models/users_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  late List<User> listUsers;

  Future getApiData(String url) async {
    final apiResponse = await http.get(Uri.parse(url));
    if (apiResponse.statusCode == 200) {
      final data = jsonDecode(apiResponse.body);
      listUsers = (data as List).map((json) {
        return User.fromJSON(json);
      }).toList();
      return listUsers;
    } else {
      print("Erro!");
    }
  }
}
