import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final bool obscure;
  final TextEditingController controller;

  const CustomTextField({
    required this.hint,
    required this.icon,
    this.obscure = false,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscure,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          icon: Icon(icon, color: Colors.grey.shade600),
        ),
      ),
    );
  }
}