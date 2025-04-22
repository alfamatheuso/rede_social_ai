import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  final HomeController controller;
  const HomePage({required this.controller});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    widget.controller.loadPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feed'),
        centerTitle: true,
      ),
      body: Observer(builder: (_) {
        if (widget.controller.loading) {
          return Center(child: CircularProgressIndicator());
        }
        if (widget.controller.posts.isEmpty) {
          return Center(child: Text('Nenhuma postagem disponível.'));
        }
        return RefreshIndicator(
          onRefresh: widget.controller.loadPosts,
          child: ListView.builder(
            itemCount: widget.controller.posts.length,
            itemBuilder: (_, index) {
              final post = widget.controller.posts[index];
              return GestureDetector(
                child: PostItemWidget(post: post),
                onTap: () {
                  Navigator.pushNamed(context, '/profile', arguments: {'userId': post.userId});
                },
              );
            },
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/create_post'),
        child: Icon(Icons.add),
      ),
    );
  }
}