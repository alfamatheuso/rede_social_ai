import 'package:mobx/mobx.dart';
part 'register_controller.g.dart';

class RegisterController = _RegisterControllerBase with _$RegisterController;

abstract class _RegisterControllerBase with Store {
  final RegisterRepository repository;
  _RegisterControllerBase(this.repository);

  @observable
  bool loading = false;

  @observable
  String error = '';

  @action
  Future<bool> register(String name, String email, String pass, String confirmPass) async {
    loading = true;
    error = '';
    if (pass != confirmPass) {
      error = 'Senhas diferentes';
      loading = false;
      return false;
    }
    final user = UserModel(id: DateTime.now().toString(), name: name, email: email, password: pass);
    bool success = await repository.register(user);
    loading = false;
    return success;
  }
}