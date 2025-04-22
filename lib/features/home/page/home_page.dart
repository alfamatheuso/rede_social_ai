import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final HomeController controller;
  HomePage({required this.controller});

  @override
  Widget build(BuildContext context) {
    controller.fetchPosts();
    return Scaffold(
      appBar: AppBar(title: Text('Feed')),
      body: Observer(builder: (_) {
        return ListView.builder(
          itemCount: controller.posts.length,
          itemBuilder: (_, i) {
            final post = controller.posts[i];
            return ListTile(
              leading: CircleAvatar(backgroundImage: NetworkImage(post.imageUrl)),
              title: Text(post.content),
              subtitle: Text('${post.likes} likes • ${post.comments} comments'),
              onTap: () => Navigator.pushNamed(context, '/profile'),
            );
          },
        );
      }),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Postar'),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notificações'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
      ]),
    );
  }
}