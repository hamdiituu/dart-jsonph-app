import 'dart:convert';

import 'package:dart_jsonph_app/base/base_service.dart';
import 'package:dart_jsonph_app/models/post_model.dart';
import "package:http/http.dart" as http;

class PostService implements BaseService<PostModel> {
  final String baseUrl = "https://jsonplaceholder.typicode.com";

  @override
  Future<List<PostModel>> getAll() async {
    List<PostModel> result = [];
    Uri url = Uri.parse("$baseUrl/posts");
    var response = await http.get(url);
    List<dynamic> convert = json.decode(response.body);
    for (var element in convert) {
      var model = PostModel.fromJson(element);
      result.add(model);
    }
    return result;
  }

  @override
  Future<PostModel> getById(int id) async {
    Uri url = Uri.parse("$baseUrl/posts/$id");
    var response = await http.get(url);
    print(response.body);
    PostModel result = PostModel.fromJson(jsonDecode(response.body));
    return result;
  }
}
