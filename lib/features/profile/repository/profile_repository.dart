class ProfileRepository {
  Future<ProfileModel> fetchProfile(String userId) async {
    await Future.delayed(Duration(seconds: 1));
    return ProfileModel(
      userId: userId,
      name: 'João Silva',
      avatarUrl: 'https://placehold.it/200x200',
      bio: 'Desenvolvedor Flutter apaixonado por tecnologia.',
      postsCount: 120,
      followers: 980,
      following: 350,
    );
  }
}