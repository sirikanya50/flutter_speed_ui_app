import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/D02Page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class D07PageUI extends StatefulWidget {
  const D07PageUI({super.key});

  @override
  State<D07PageUI> createState() => _D07PageUIState();
}

class _D07PageUIState extends State<D07PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/img9.png',
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(height: 35),
              Text(
                "Password Changed!",
                style: GoogleFonts.poppins(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1E232C),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Your password has been changed\nsuccessfully.",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: const Color(0xFF8391A1),
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const D02PageUI()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1E232C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Back to Login",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
