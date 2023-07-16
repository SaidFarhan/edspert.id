import 'package:edspert/widgets/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Login",
          style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Center(child: Image.asset("images/welcome.png")),
              SizedBox(height: 10),
              Text(
                "Selamat Datang",
                style: GoogleFonts.poppins(
                    fontSize: 22, fontWeight: FontWeight.w500),
              ),
              Text(
                "Selamat Datang di Aplikasi Said Farhan\n"
                "Aplikasi Latihan dan konsultasi Soal",
                style: GoogleFonts.poppins(
                    color: Color(0xff6A7483),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Column(
            children: [
              AuthButton(
                  iconPath: "images/google-logo.png",
                  text: "Masuk Dengan Google",
                  color: Colors.white,
                  textColor: Colors.black),
              SizedBox(height: 12),
              AuthButton(
                  iconPath: "images/apple-logo.png",
                  text: "Masuk Dengan Apple",
                  color: Colors.black,
                  textColor: Colors.white),
            ],
          )
        ],
      ),
    );
  }
}
