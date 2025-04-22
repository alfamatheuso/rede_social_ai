final routes = {
  '/login': (context) => LoginPage(controller: LoginController(LoginRepository())),
  '/register': (context) => RegisterPage(controller: RegisterController(RegisterRepository())),
  '/home': (context) => HomePage(controller: HomeController(HomeRepository())),
  '/profile': (context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>? ?? {};
    final userId = args['userId'] as String? ?? '1';
    return ProfilePage(controller: ProfileController(ProfileRepository()), userId: userId);
  },
  '/create_post': (context) => CreatePostPage(controller: CreatePostController(CreatePostRepository())),
};