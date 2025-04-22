import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final HomeRepository repository;
  _HomeControllerBase(this.repository);

  @observable
  ObservableList<PostModel> posts = ObservableList<PostModel>();

  @observable
  bool loading = false;

  @action
  Future<void> loadPosts() async {
    loading = true;
    final result = await repository.fetchPosts();
    posts = ObservableList<PostModel>.of(result);
    loading = false;
  }
}