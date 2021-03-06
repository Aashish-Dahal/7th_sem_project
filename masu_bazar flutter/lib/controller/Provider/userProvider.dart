import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:masu_bazar/Model/model.dart';
import 'package:masu_bazar/controller/Provider/cprovider.dart';

import 'package:shared_preferences/shared_preferences.dart';

class UserDetailsProvider with ChangeNotifier {
  Future<http.Response> login(UserModel loginModel) async {
    final headers = {
      'content-type': 'application/json',
    };
    try {
      final response = await http.post(
        AppUrl.login,
        headers: headers,
        body: userModelToJson(loginModel),
      );

      return response;
    } catch (e) {
      print(e.toString());
    }
  }

  Future<http.Response> register(UserModel registerModel) async {
    final headers = {
      'content-type': 'application/json',
    };
    try {
      final response = await http.post(
        AppUrl.register,
        headers: headers,
        body: userModelToJson(registerModel),
      );
      return response;
    } catch (e) {
      print(e.toString());
    }
  }

  Future<http.StreamedResponse> khasiListPost(
      {File imagePath, KhasiModel khasiModel}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString("token");
    final headers = {
      'Content-Type': 'multipart/form-data',
      'Authorization': 'Bearer ' + token,
    };
    final request = http.MultipartRequest('POST', Uri.parse(AppUrl.addKhasi));
    var data = khasiModel.toJson();
    data.forEach((key, value) {
      request.fields[key] = value.toString();
    });

    var pic = await http.MultipartFile.fromPath("image", imagePath.path);
    request.files.add(pic);
    request.headers.addAll(headers);
    try {
      var res = await request.send();
      res.stream.transform(utf8.decoder).listen((value) {
        print(value);
      });
      return res;
    } catch (e) {
      print(e.toString());
    }
  }

  Future<List<KhasiModel>> getKhasi() async {
    final response = await http.get(
      AppUrl.getKhasi,
      headers: {
        "Accept": "application/json",
      },
    );
    //  print(token);
    print(response.body);
    return khasiModelFromJson(response.body);
  }

  Future<List<KhasiModel>> getBoka() async {
    final response = await http.get(
      AppUrl.getBoka,
      headers: {
        "Accept": "application/json",
      },
    );
    //  print(token);
    print(response.body);
    return khasiModelFromJson(response.body);
  }

  Future<List<KhasiModel>> getSingleKhasi() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString("token");
    print(token);
    try {
      final response = await http.get(
        AppUrl.getSingleKhasi,
        headers: {
          "Accept": "application/json",
          'Authorization': 'Bearer ' + token
        },
      );
      // print(token);
      print(response.body);
      return khasiModelFromJson(response.body);
    } catch (e) {
      print(e.toString());
    }
  }

  Future<http.Response> deletePost(String id) async {
    final response = await http.delete(
      AppUrl.khasiBaseUrl + "/" + id,
    );
    return response;
  }

  Future<bool> saveUser(UserModel user) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString("userId", user.userId);
    preferences.setString("name", user.name);
    preferences.setString("email", user.email);
    preferences.setString("token", user.token);
    return true;
  }

  Future<UserModel> getUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String userId = prefs.getString("userId");
    String name = prefs.getString("name");
    String email = prefs.getString("email");
    String token = prefs.getString("token");
    notifyListeners();
    return UserModel(
      userId: userId,
      name: name,
      email: email,
      token: token,
    );
  }

  Future<String> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.getString("token");

    return token;
  }
}
