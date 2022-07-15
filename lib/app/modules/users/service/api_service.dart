import 'dart:convert';

import 'package:dio/dio.dart';

import '../models/users_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  late List<User> listUsers;

  Future getApiDataHttp(String url) async {
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

  final Dio _dio = Dio();

  Future getApiDataDio() async {
    final apiResponse =
        await _dio.get('https://jsonplaceholder.typicode.com/users');
    if (apiResponse.statusCode == 200) {
      final data = apiResponse.data as List<dynamic>;
      listUsers = (data).map((json) {
        return User.fromJSON(json);
      }).toList();
      return listUsers;
    } else {
      print("Erro!");
    }
  }
}
