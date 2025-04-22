import 'package:flutter/material.dart';

class CreatePostPage extends StatelessWidget {
  final CreatePostController controller;
  CreatePostPage({required this.controller});

  final contentCtrl = TextEditingController();
  final imageCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nova Postagem')),
      body: Observer(builder: (_) {
        return Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                controller: contentCtrl,
                decoration: InputDecoration(hintText: 'Escreva algo...'),
                maxLines: 5,
              ),
              TextField(
                controller: imageCtrl,
                decoration: InputDecoration(hintText: 'URL da imagem (opcional)'),
              ),
              if (controller.error.isNotEmpty) Text(controller.error, style: TextStyle(color: Colors.red)),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: controller.loading
                    ? null
                    : () async {
                        bool success = await controller.createNewPost(contentCtrl.text, imageCtrl.text);
                        if (success) Navigator.pop(context);
                      },
                child: controller.loading ? CircularProgressIndicator() : Text('Publicar'),
              ),
            ],
          ),
        );
      }),
    );
  }
}