import 'dart:convert';
import 'package:http/http.dart';
import '../model/user_model.dart';

class UserRepository {
  String endpoint = 'https://reqres.in/api/user?page=2';
  getUser() async {
    Response response = await get(Uri.parse(endpoint));
    if(response.statusCode == 200){
      final List result = jsonDecode(response.body)['data'];
      return result.map((e) => UserModel.fromJson(e)).toList();

    }else {
      throw Exception(response.reasonPhrase);
    }
  }
}