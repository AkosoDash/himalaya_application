import 'package:flutter/material.dart';
import 'package:himalaya_application/core/utils/hex_to_color.dart';
import 'package:himalaya_application/core/utils/screen_resolution.dart';
import 'package:himalaya_application/features/auth/presentation/pages/otp_verification_screen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});
  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
                    "assets/authentication_images/forgot_password_image.png")),
            const Padding(
              padding: EdgeInsets.fromLTRB(32, 0, 32, 24),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lupa Password",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 40),
                    ),
                    Text(
                      "Don’t worry ! It happens. Please enter the email, we will send the OTP in your gmail.",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    )
                  ]),
            ),
            Column(children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 12, left: 56, top: 12),
                child: Align(
                  alignment: Alignment.centerLeft, // Align the text to the left
                  child: Text(
                    "Email",
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
                      hintText: 'asep@himalaya.com',
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
              padding: const EdgeInsets.only(top: 32),
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
                          builder: (context) => const OtpVerificationScreen(
                                otpTypeTitle: "OTP Verification",
                                otpUrl: "google.com",
                              )),
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
                    "Continue",
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
      ),
    );
  }
}
