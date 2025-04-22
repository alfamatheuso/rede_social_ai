import 'package:mobx/mobx.dart';
part 'create_post_controller.g.dart';

class CreatePostController = _CreatePostControllerBase with _$CreatePostController;

abstract class _CreatePostControllerBase with Store {
  final CreatePostRepository repository;
  _CreatePostControllerBase(this.repository);

  @observable
  bool loading = false;

  @observable
  String error = '';

  @action
  Future<bool> createNewPost(String content, String imageUrl) async {
    loading = true;
    error = '';
    if (content.isEmpty && imageUrl.isEmpty) {
      error = 'Insira algum conteúdo ou imagem';
      loading = false;
      return false;
    }
    final post = PostModel(
      id: DateTime.now().toString(),
      userId: '1',
      content: content,
      imageUrl: imageUrl,
      likes: 0,
      comments: 0,
    );
    bool result = await repository.createPost(post);
    loading = false;
    return result;
  }
}