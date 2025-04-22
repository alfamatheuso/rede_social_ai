class ProfileRepository {
  final mockService = MockService();

  Future<ProfileModel> fetchProfile(String userId) async {
    final data = await mockService.getMockData('users.json');
    final userJson = data.firstWhere((user) => user['id'] == userId);
    return ProfileModel.fromJson(userJson);
  }
}