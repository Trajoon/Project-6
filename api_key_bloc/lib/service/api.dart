import 'package:api_key_bloc/models/category.dart';
import 'package:api_key_bloc/models/product.dart';
import 'package:api_key_bloc/models/user_service.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:http/http.dart';

class UserService {
  Future<User> createUser(
      {required String name,
      required String email,
      required String password}) async {
    final uri = Uri.parse("https://api.escuelajs.co/api/v1/users/");

    final create = {
      "name": name,
      "email": email,
      "password": password,
      "avatar": "https://i.imgur.com/LDOO4Qs.jpg",
    };

    final request = await http.post(uri, body: create);

    final res = json.decode(request.body);
    User user = User.fromJson(res);
    return user;
  }

  Future<Map<String, dynamic>> login(
      {required String email, required String password}) async {
    final uri = Uri.parse("https://api.escuelajs.co/api/v1/auth/login");
    final login = {"email": email, "password": password};

    final request = await http.post(uri, body: login);
    final res = json.decode(request.body);

    print('Response Status Code: ${request.statusCode}');
    print('Response Body: ${request.body}');

    try {
      return res;
    } catch (e) {
      throw const FormatException("error");
    }
  }

  Future<Map<String, dynamic>> getToken({required String token}) async {
    final uri = Uri.parse("https://api.escuelajs.co/api/v1/auth/profile");
    final view = {"Authorization": "Bearer $token"};

    final request = await http.get(uri, headers: view);
    final res = json.decode(request.body);

    return res;
  }

  Future<List<CategoryStore>> generateCategory() async {
    final Response response = await http
        .get(Uri.parse("https://api.escuelajs.co/api/v1/categories/"));

    final responseJson = json.decode(response.body);

    List<CategoryStore> category = List.generate(responseJson.length,
        (index) => CategoryStore.fromJson(responseJson[index]));

    return category;
  }

  Future<List<Product>> generateProduct() async {
    final Response response =
        await http.get(Uri.parse("https://api.escuelajs.co/api/v1/products/"));

    final responseJson = json.decode(response.body);

    List<Product> product = List.generate(
        responseJson.length, (index) => Product.fromJson(responseJson[index]));

    return product;
  }

  Future<Map<String, dynamic>?> getUserProfile({required String token}) async {
    final uri = Uri.parse("https://api.escuelajs.co/api/v1/auth/profile");
    final headers = {"Authorization": "Bearer $token"};

    try {
      final response = await http.get(uri, headers: headers);
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
