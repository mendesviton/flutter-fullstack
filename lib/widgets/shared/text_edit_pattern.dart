import 'package:flutter/material.dart';

class TextFieldPattern extends StatelessWidget {
  const TextFieldPattern({
    Key? key,
    required this.controller,
    required this.hint,
    required this.icon,
    required this.obscure,
  }) : super(key: key);
  final TextEditingController controller;
  final String hint;
  final IconData icon;
  final bool obscure;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure,
      controller: controller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 25),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Icon(icon, color: Colors.grey),
        ),
        border: const OutlineInputBorder(),
        hintText: hint,
        filled: true,
        fillColor: const Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}
