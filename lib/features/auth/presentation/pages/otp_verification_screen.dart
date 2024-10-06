import 'dart:developer'; // For using log function
import 'package:flutter/material.dart';
import 'package:himalaya_application/core/utils/hex_to_color.dart';
import 'package:himalaya_application/core/utils/screen_resolution.dart';
import 'package:himalaya_application/features/auth/presentation/pages/change_password_screen.dart';

class OtpVerificationScreen extends StatefulWidget {
  final String otpTypeTitle, otpUrl;
  const OtpVerificationScreen(
      {super.key, required this.otpTypeTitle, required this.otpUrl});
  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    // final String receivedOtpCode = widget.otpUrl;
    final String receivedOtpTypeTitle = widget.otpTypeTitle;

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
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 64, 32, 48),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          receivedOtpTypeTitle,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 40),
                        ),
                        const Text(
                          "Masukkan kode OTP, cek pesan secara berkala!",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        )
                      ]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // First TextField
                    SizedBox(
                      width: screenSize['width']! / 6,
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
                                width: .5, // Set border color when focused
                              ),
                            ),
                            filled: true,
                            fillColor:
                                Colors.transparent, // Gradient background
                          ),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),

                    // Add a Spacer for gap
                    const SizedBox(width: 20),

                    // Second TextField
                    SizedBox(
                      width: screenSize['width']! / 6,
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
                                width: .5, // Set border color when focused
                              ),
                            ),
                            filled: true,
                            fillColor:
                                Colors.transparent, // Gradient background
                          ),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),

                    // Add a Spacer for gap
                    const SizedBox(width: 20),

                    // Third TextField
                    SizedBox(
                      width: screenSize['width']! / 6,
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
                                width: .5, // Set border color when focused
                              ),
                            ),
                            filled: true,
                            fillColor:
                                Colors.transparent, // Gradient background
                          ),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),

                    // Add a Spacer for gap
                    const SizedBox(width: 20),

                    // Fourth TextField
                    SizedBox(
                      width: screenSize['width']! / 6,
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
                                width: .5, // Set border color when focused
                              ),
                            ),
                            filled: true,
                            fillColor:
                                Colors.transparent, // Gradient background
                          ),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 48),
                  child: Container(
                    decoration: BoxDecoration(
                      color: hexToColor("#FFA823"), // Background color
                      borderRadius:
                          BorderRadius.circular(4.0), // Desired border radius
                    ),
                    child: TextButton(
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ChangePasswordScreen()),
                        )
                      },
                      style: ButtonStyle(
                        foregroundColor:
                            WidgetStateProperty.all<Color>(Colors.transparent),
                        padding: WidgetStateProperty.all<EdgeInsets>(
                          const EdgeInsets.symmetric(
                              vertical: 8.0,
                              horizontal: 28.0), // Padding inside the button
                        ),
                      ),
                      child: const Text(
                        "Verifikasi",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
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
                          onPressed: () =>
                              {log("Resend OTP Verification Code")},
                          child: Text(
                            "Klik Disini",
                            style: TextStyle(
                              color: hexToColor(
                                  "#FFAA00"), // Use hexToColor function
                              fontSize: 14,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        const Text(
                          "jika belum mendapatkan kode",
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
