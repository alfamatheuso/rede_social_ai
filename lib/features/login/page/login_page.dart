import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final LoginController controller;

  const LoginPage({required this.controller});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: size.height * 0.1),
              Icon(Icons.flutter_dash, size: 100, color: Colors.blueAccent),
              SizedBox(height: 16),
              Text(
                'Bem-vindo!',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Faça login para continuar',
                style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
              ),
              SizedBox(height: 32),
              CustomTextField(
                controller: emailController,
                hint: 'Email',
                icon: Icons.email_outlined,
              ),
              SizedBox(height: 16),
              CustomTextField(
                controller: passwordController,
                hint: 'Senha',
                icon: Icons.lock_outline,
                obscure: true,
              ),
              SizedBox(height: 24),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  widget.controller.login(
                    emailController.text,
                    passwordController.text,
                    context,
                  );
                },
                child: Text(
                  'Entrar',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              SizedBox(height: 16),
              TextButton(
                onPressed: () => Navigator.pushNamed(context, '/register'),
                child: Text(
                  'Não possui conta? Cadastre-se',
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
              Spacer(),
              Text(
                'Flutter MVC App © 2024',
                style: TextStyle(color: Colors.grey.shade400, fontSize: 12),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}