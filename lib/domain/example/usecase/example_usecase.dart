import 'package:split_it_ignite/domain/example/model/example_model.dart';
import 'package:split_it_ignite/domain/example/repository/example_repository.dart';

class ExampleUseCase {
  ExampleRepository repository = ExampleRepository();

  Future<ExampleModel> examplePost(ExampleModel sendExample) async {
    try {
      ExampleModel example =
          await repository.examplePost(sendExample: sendExample);
      return example;
    } catch (e) {
      rethrow;
    }
  }

  void dispose() {
    repository.dispose();
  }
}
