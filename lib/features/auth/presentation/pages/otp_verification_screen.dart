import 'dart:developer'; // For using log function
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:himalaya_application/core/utils/hex_to_color.dart';

class OtpVerificationScreen extends StatefulWidget {
  final String otpTypeTitle, otpUrl;
  final MaterialPageRoute directTo;
  const OtpVerificationScreen(
      {super.key,
      required this.otpTypeTitle,
      required this.otpUrl,
      required this.directTo});
  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    // final String receivedOtpCode = widget.otpUrl;
    final String receivedOtpTypeTitle = widget.otpTypeTitle;
    final MaterialPageRoute receivedDirectTo = widget.directTo;

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
                OtpTextField(
                  numberOfFields: 4,
                  fieldWidth: 64,
                  borderWidth: 0.5,
                  fillColor: Colors.white,
                  textStyle: const TextStyle(color: Colors.white, fontSize: 24),
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  borderColor: const Color(0xFFFFFFFF),
                  margin: const EdgeInsets.symmetric(horizontal: 18),
                  showFieldAsBox: true,
                  focusedBorderColor: const Color(0xFFFFEE62),
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text("Verification Code"),
                            content: Text('Code entered is asd'),
                          );
                        });
                  }, // end onSubmit
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
                      onPressed: () =>
                          {Navigator.push(context, receivedDirectTo)},
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
