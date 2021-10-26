import 'package:dart_jsonph_app/models/post_model.dart';
import 'package:dart_jsonph_app/services/post_service.dart';

void main(List<String> arguments) async {
  print('running');
  PostService postService = PostService();
  //postService.getAll();
  PostModel todo = await postService.getById(1);
  print(todo);
}
