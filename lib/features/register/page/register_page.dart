import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final RegisterController controller;
  RegisterPage({required this.controller});

  final nameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  final confirmPassCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) => Column(children: [
          TextField(controller: nameCtrl, decoration: InputDecoration(labelText: 'Nome')),
          TextField(controller: emailCtrl, decoration: InputDecoration(labelText: 'Email')),
          TextField(controller: passCtrl, decoration: InputDecoration(labelText: 'Senha'), obscureText: true),
          TextField(controller: confirmPassCtrl, decoration: InputDecoration(labelText: 'Confirme a senha'), obscureText: true),
          if (controller.error.isNotEmpty) Text(controller.error, style: TextStyle(color: Colors.red)),
          ElevatedButton(
            onPressed: controller.loading
                ? null
                : () async {
                    bool success = await controller.register(nameCtrl.text, emailCtrl.text, passCtrl.text, confirmPassCtrl.text);
                    if (success) Navigator.pushReplacementNamed(context, '/home');
                  },
            child: controller.loading ? CircularProgressIndicator() : Text('Criar Conta'),
          ),
        ]),
      ),
    );
  }
}