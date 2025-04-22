class RegisterRepository {
  final mockService = MockService();

  Future<bool> register(UserModel user) async {
    await Future.delayed(Duration(seconds: 2));
    return true;
  }
}