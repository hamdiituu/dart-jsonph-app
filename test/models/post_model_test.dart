import 'dart:convert';

import 'package:dart_jsonph_app/models/post_model.dart';
import 'package:test/test.dart';

void main() {
  late PostModel postModel;

  setUp(() {
    postModel =
        PostModel(id: 1, userId: 1, title: "model Title", body: "model Body");
  });

  group("post model tests", () {
    test("post model create from json check toString", () {
      var testJson = jsonDecode(
          '{ "id" : ${postModel.id} ,"userId" :${postModel.userId} ,"title" : "${postModel.title}" ,"body": "${postModel.body}"}');
      var testModel = PostModel.fromJson(testJson);
      expect(testModel.toString(), equals(postModel.toString()));
    });

    test("post model toString", () {
      String resultString =
          "{ id:1,userId:1,title:model Title,body:model Body}";
      expect(postModel.toString(), equals(resultString));
    });
  });
}
