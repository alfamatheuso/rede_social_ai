class ProfileRepository {
  final List<ProfileModel> _mockProfiles = [
    ProfileModel(
      userId: '1',
      name: 'João Silva',
      avatarUrl: 'https://placehold.it/200x200',
      bio: 'Desenvolvedor Flutter apaixonado por tecnologia.',
      postsCount: 120,
      followers: 980,
      following: 350,
    ),
    ProfileModel(
      userId: '2',
      name: 'Maria Oliveira',
      avatarUrl: 'https://placehold.it/200x200',
      bio: 'UI/UX Designer com foco em mobile.',
      postsCount: 75,
      followers: 1120,
      following: 290,
    ),
    ProfileModel(
      userId: '3',
      name: 'Carlos Eduardo',
      avatarUrl: 'https://placehold.it/200x200',
      bio: 'Especialista em desenvolvimento Mobile.',
      postsCount: 95,
      followers: 1500,
      following: 260,
    ),
  ];

  Future<ProfileModel?> fetchProfile(String userId) async {
    await Future.delayed(Duration(seconds: 1));
    for (var profile in _mockProfiles) {
      if (profile.userId == userId) {
        return profile;
      }
    }
    return null; //Caso não encontre retorna null
  }
}