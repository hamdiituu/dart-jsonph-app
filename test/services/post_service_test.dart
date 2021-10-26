import 'package:dart_jsonph_app/models/post_model.dart';
import 'package:dart_jsonph_app/services/post_service.dart';
import 'package:test/test.dart';

void main() {
  late PostService postService;

  setUp(() {
    postService = PostService();
  });
  group('post service', () {
    test('post get all is not empty', () async {
      List<PostModel> result = await postService.getAll();
      expect(result, allOf([isNotEmpty]));
    });

    test('post get by id', () async {
      const int testId = 1;
      PostModel result = await postService.getById(testId);
      expect(result.id, equals(1));
      expect(result.userId, equals(1));
    });
  });
}
