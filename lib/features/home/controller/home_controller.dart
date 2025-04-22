import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final HomeRepository repository;
  _HomeControllerBase(this.repository);

  @observable
  ObservableList<PostModel> posts = ObservableList();

  @action
  fetchPosts() async {
    posts = ObservableList.of(await repository.fetchPosts());
  }
}