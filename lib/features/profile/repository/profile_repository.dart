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
      bio: 'Designer UI/UX e criadora de conteúdo.',
      postsCount: 85,
      followers: 1200,
      following: 410,
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

  Future<ProfileModel> fetchProfile(String userId) async {
    await Future.delayed(Duration(seconds: 1));
    return _mockProfiles.firstWhere(
      (profile) => profile.userId == userId,
      orElse: () => ProfileModel(
        userId: '0',
        name: 'Usuário não encontrado',
        avatarUrl: 'https://placehold.it/200x200',
        bio: '',
        postsCount: 0,
        followers: 0,
        following: 0,
      ),
    );
  }
}