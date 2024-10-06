import 'dart:developer'; // For using log function
import 'package:flutter/material.dart';
import 'package:himalaya_application/core/utils/hex_to_color.dart';
import 'package:himalaya_application/core/utils/screen_resolution.dart';
import 'package:himalaya_application/features/auth/presentation/pages/forgot_password_screen.dart';
import 'package:himalaya_application/features/auth/presentation/pages/registration_screen.dart'; // Assuming this is a utility for converting HEX to color.

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Map<String, double> screenSize = getScreenSize(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 69, 163, 192),
          Color.fromARGB(255, 71, 140, 183),
          Color.fromARGB(255, 24, 87, 154)
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.only(bottom: 48),
                child: Image.asset(
                    "assets/authentication_images/login_images.png")),
            const Padding(
              padding: EdgeInsets.only(bottom: 24),
              child: Column(children: [
                Text(
                  "Welcome!",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 40),
                ),
                Text(
                  "Jadi Juara!",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                )
              ]),
            ),
            Column(children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 12, left: 56),
                child: Align(
                  alignment: Alignment.centerLeft, // Align the text to the left
                  child: Text(
                    "Username",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(
                width: screenSize['width']! - 112,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.white24,
                        Colors.white10,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color:
                              Colors.white, // Set border color when not focused
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0, // Set border color when focused
                        ),
                      ),
                      prefixIcon:
                          Icon(Icons.person_outline, color: Colors.white),
                      hintText: 'Enter Username',
                      hintStyle: TextStyle(color: Colors.white60),
                      prefixIconColor: Colors.white,
                      filled: true,
                      fillColor: Colors.transparent, // Gradient background
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ]),
            Column(children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 12, left: 56, top: 12),
                child: Align(
                  alignment: Alignment.centerLeft, // Align the text to the left
                  child: Text(
                    "Username",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(
                width: screenSize['width']! - 112,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.white24,
                        Colors.white10,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color:
                              Colors.white, // Set border color when not focused
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0, // Set border color when focused
                        ),
                      ),
                      prefixIcon: Icon(Icons.key_outlined, color: Colors.white),
                      suffixIcon: Icon(Icons.remove_red_eye_outlined,
                          color: Colors.white),
                      hintText: 'Enter Password',
                      hintStyle: TextStyle(color: Colors.white60),
                      prefixIconColor: Colors.white,
                      filled: true,
                      fillColor: Colors.transparent, // Gradient background
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ]),
            Padding(
              padding: const EdgeInsets.only(right: 48, bottom: 24),
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () => {
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgotPasswordScreen()),
                      )
                    }
                  },
                  child: const Text(
                    "Forgot Password",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            Container(
              width: screenSize['width']! - 112, // Set width to screen width
              decoration: BoxDecoration(
                color: hexToColor("#FFA823"), // Background color
                borderRadius:
                    BorderRadius.circular(16.0), // Desired border radius
              ),
              child: TextButton(
                onPressed: () => log("Sign In Pressed"), // Corrected log usage
                child: const Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Align the row to start
                  children: [
                    TextButton(
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegistrationScreen()),
                        )
                      },
                      child: Text(
                        "Klik Disini",
                        style: TextStyle(
                          color:
                              hexToColor("#FFAA00"), // Use hexToColor function
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    const Text(
                      "jika belum mempunyai akun",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
