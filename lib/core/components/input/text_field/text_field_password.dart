import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: !showPassword,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white, // Set border color when not focused
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
            width: 1.0, // Set border color when focused
          ),
        ),
        prefixIcon: const Icon(Icons.key_outlined, color: Colors.white),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              showPassword = !showPassword;
            });
          },
          icon: Icon(
            showPassword ? Icons.visibility : Icons.visibility_off,
            color: Colors.white,
          ),
        ),
        hintText: 'Enter Password',
        hintStyle: const TextStyle(color: Colors.white60),
        prefixIconColor: Colors.white,
        filled: true,
        fillColor: Colors.transparent, // Gradient background
      ),
      style: const TextStyle(color: Colors.white),
    );
  }
}
