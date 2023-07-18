import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthButton extends StatelessWidget {
  AuthButton({
    required this.iconPath,
    required this.text,
    required this.color,
    required this.textColor,
    required this.ontap,
  });

  final String iconPath;
  final String text;
  final Color color;
  final Color textColor;
  void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      style: ButtonStyle(
          shadowColor: MaterialStatePropertyAll(Colors.black),
          elevation: MaterialStatePropertyAll(7),
          backgroundColor: MaterialStatePropertyAll(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
          side: MaterialStatePropertyAll(
            BorderSide(
                color: color == Colors.black
                    ? Colors.transparent
                    : Color(0xff01B1AF),
                width: 2),
          )),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(iconPath),
            SizedBox(width: 8),
            Text(
              text,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
