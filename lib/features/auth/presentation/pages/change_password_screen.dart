import 'package:flutter/material.dart';
import 'package:himalaya_application/core/utils/hex_to_color.dart';
import 'package:himalaya_application/core/utils/screen_resolution.dart';
import 'package:himalaya_application/features/auth/presentation/pages/login_screen.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});
  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 64, 24, 48),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 12),
                          child: Text(
                            "Masukkan Password Baru",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 24),
                          ),
                        ),
                        Text(
                          "Gunakan kombinasi huruf kapital, angka, atau simbol agar data anda aman!",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        )
                      ]),
                ),
                Column(children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 12, left: 24),
                    child: Align(
                      alignment:
                          Alignment.centerLeft, // Align the text to the left
                      child: Text(
                        "Password Baru",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenSize['width']! - 48,
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
                              color: Colors
                                  .white, // Set border color when not focused
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.0, // Set border color when focused
                            ),
                          ),
                          prefixIcon:
                              Icon(Icons.key_outlined, color: Colors.white),
                          suffixIcon: Icon(
                            Icons.remove_red_eye_outlined,
                            color: Colors.white,
                          ),
                          hintText: 'Hihihiha123#',
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
                    padding: EdgeInsets.only(top: 24, bottom: 12, left: 24),
                    child: Align(
                      alignment:
                          Alignment.centerLeft, // Align the text to the left
                      child: Text(
                        "Password Baru",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenSize['width']! - 48,
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
                              color: Colors
                                  .white, // Set border color when not focused
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.0, // Set border color when focused
                            ),
                          ),
                          prefixIcon:
                              Icon(Icons.key_outlined, color: Colors.white),
                          suffixIcon: Icon(
                            Icons.remove_red_eye_outlined,
                            color: Colors.white,
                          ),
                          hintText: 'Hihihiha123#',
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
                  padding: const EdgeInsets.only(top: 48),
                  child: Container(
                    decoration: BoxDecoration(
                      color: hexToColor("#FFA823"),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: TextButton(
                      style: ButtonStyle(
                        padding: WidgetStateProperty.all<EdgeInsets>(
                          const EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 24.0),
                        ),
                      ),
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()),
                        )
                      },
                      child: const Text(
                        "Konfirmasi",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 48),
              child: SizedBox(
                width: 56, // Set the desired width
                height: 68, // Set the desired height
                child: Image.asset(
                    "assets/splash_screen_images/splash_screen.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
