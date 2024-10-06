import 'package:flutter/material.dart';
import 'package:himalaya_application/core/utils/hex_to_color.dart';
import 'package:himalaya_application/core/utils/screen_resolution.dart';
import 'package:himalaya_application/features/auth/presentation/pages/login_screen.dart';
import 'package:himalaya_application/features/auth/presentation/pages/otp_verification_screen.dart'; // Assuming this is a utility for converting HEX to color.

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});
  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    Map<String, double> screenSize = getScreenSize(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
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
                padding: const EdgeInsets.symmetric(vertical: 48),
                child: Image.asset(
                    "assets/authentication_images/registration_image.png")),
            const Padding(
              padding: EdgeInsets.only(bottom: 24),
              child: Column(children: [
                Text(
                  "Get Started",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 40),
                ),
                Text(
                  "Writing is clarifying!!",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                )
              ]),
            ),
            SizedBox(
              width: getScreenSize(context)['width']! - 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Align to the start
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 12),
                        child: Text(
                          "First Name",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        width: screenSize['width']! / 2 - 36,
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
                                  color: Colors.white,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.transparent,
                            ),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Align to the start
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 12),
                        child: Text(
                          "Last Name",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        width: screenSize['width']! / 2 - 36,
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
                                  color: Colors.white,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.transparent,
                            ),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Column(children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 12, left: 20, top: 12),
                child: Align(
                  alignment: Alignment.centerLeft, // Align the text to the left
                  child: Text(
                    "College/School Name",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(
                width: screenSize['width']! - 40,
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
                padding: EdgeInsets.only(bottom: 12, left: 20, top: 12),
                child: Align(
                  alignment: Alignment.centerLeft, // Align the text to the left
                  child: Text(
                    "Degree",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(
                width: screenSize['width']! - 40,
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
                      suffixIcon: Icon(Icons.keyboard_arrow_down_rounded,
                          color: Colors.white),
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
                padding: EdgeInsets.only(bottom: 12, left: 20, top: 12),
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
                width: screenSize['width']! - 40,
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
                          Icon(Icons.person_2_outlined, color: Colors.white),
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
                padding: EdgeInsets.only(bottom: 12, left: 20, top: 12),
                child: Align(
                  alignment: Alignment.centerLeft, // Align the text to the left
                  child: Text(
                    "Password",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(
                width: screenSize['width']! - 40,
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
                padding: EdgeInsets.only(bottom: 12, left: 20, top: 12),
                child: Align(
                  alignment: Alignment.centerLeft, // Align the text to the left
                  child: Text(
                    "Confirmation Password",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(
                width: screenSize['width']! - 40,
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
                padding: EdgeInsets.only(bottom: 12, left: 20, top: 12),
                child: Align(
                  alignment: Alignment.centerLeft, // Align the text to the left
                  child: Text(
                    "Phone Number",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(
                width: screenSize['width']! - 40,
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
                      filled: true,
                      fillColor: Colors.transparent, // Gradient background
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Container(
                width: screenSize['width']! - 40, // Set width to screen width
                decoration: BoxDecoration(
                  color: hexToColor("#FFA823"), // Background color
                  borderRadius:
                      BorderRadius.circular(16.0), // Desired border radius
                ),
                child: TextButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OtpVerificationScreen(
                                otpTypeTitle: "Send OTP Code!",
                                otpUrl: "google.com",
                              )),
                    )
                  },
                  child: const Text(
                    "Sign Up",
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()),
                        )
                      },
                      child: Text(
                        "Klik Disini",
                        style: TextStyle(
                          color: hexToColor("#FFAA00"),
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
    ));
  }
}
