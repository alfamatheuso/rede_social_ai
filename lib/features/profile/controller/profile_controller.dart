import 'package:mobx/mobx.dart';
part 'profile_controller.g.dart';

class ProfileController = _ProfileControllerBase with _$ProfileController;

abstract class _ProfileControllerBase with Store {
  final ProfileRepository repository;

  _ProfileControllerBase(this.repository);

  @observable
  ProfileModel? profile;

  @observable
  bool loading = false;

  @action
  Future<void> loadProfile(String userId) async {
    loading = true;
    profile = await repository.fetchProfile(userId);
    loading = false;
  }
}