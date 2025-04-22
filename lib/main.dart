import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<LoginController>(create: (_) => LoginController(LoginRepository())),
        Provider<RegisterController>(create: (_) => RegisterController(RegisterRepository())),
        Provider<HomeController>(create: (_) => HomeController(HomeRepository())),
        Provider<ProfileController>(create: (_) => ProfileController(ProfileRepository())),
        Provider<CreatePostController>(create: (_) => CreatePostController(CreatePostRepository())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Social MVC',
        initialRoute: '/login',
        routes: routes,
      ),
    );
  }
}
