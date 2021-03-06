// import 'package:masu_bazar/Model/khasi.dart';
// import 'package:masu_bazar/Model/user.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:http/http.dart' as http;

// String geturl = "http://192.168.0.15:3000/khasiLists/get";
// String posturl = "http://192.168.0.15:3000/khasiLists/post";
// String userposturl = "http://192.168.1.69:3000/user/signup";
// String editurl = "http://192.168.0.15:3000/khasiLists/";

// Future<KhasiModel> getPosts() async {
//   final response = await http.get(
//     geturl,
//     headers: {
//       "Accept": "application/json",
//     },
//   );
//   return khasiModelFromJson(response.body);
// }

// Future<KhasiModel> getSinglePosts() async {
//   final response = await http.get(a
//     geturl,
//     headers: {
//       "Accept": "application/json",
//     },
//   );
//   return khasiModelFromJson(response.body);
// }

// Future<http.Response> createPost(KhasiModel khasiModel) async {
//   final prefs = await SharedPreferences.getInstance();
//   final key = 'token';
//   final value = prefs.get(key) ?? 0;
//   final headers = {
//     'content-type': 'application/json',
//     'Authorization': 'Bearer ' + value,
//     'Accept': 'multipart/form-data',
//   };

//   final response = await http.post(
//     posturl,
//     headers: headers,
//     body: khasiModelToJson(khasiModel),
//   );
//   return response;
// }

// Future<http.Response> register(UserModel userModel) async {
//   final headers = {
//     'content-type': 'application/json',
//   };

//   final response = await http.post(
//     userposturl,
//     headers: headers,
//     body: userModelToJson(userModel),
//   );
//   return response;
// }

// // Future<http.Response> updatePost(KhasiModel khasiModel) async {
// //   final headers = {
// //     'content-type': 'application/json',
// //   };

// //   final response = await http.put(
// //     editurl + khasiModel.id,
// //     headers: headers,
// //     body: khasiModelToJson(khasiModel),
// //   );
// //   return response;
// // }

// // Future<http.Response> deletePost(String id) async {
// //   final response = await http.delete(
// //     editurl + id,
// //   );
// //   return response;
// // }
