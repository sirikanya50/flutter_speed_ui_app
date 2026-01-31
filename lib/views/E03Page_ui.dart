import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class E03PageUI extends StatefulWidget {
  const E03PageUI({super.key});

  @override
  State<E03PageUI> createState() => _E03PageUIState();
}

class _E03PageUIState extends State<E03PageUI> {
  @override
  Widget build(BuildContext context) {
    
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      
      body: Column(
        children: [
          
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: screenHeight * 0.3, 
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(400.0),
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/images/img4.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 40,
                left: 20,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: Colors.white54,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.arrow_back_ios_new, size: 18),
                  ),
                ),
              ),
            ],
          ),

          
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                children: [
                  
                  Column(
                    children: [
                      Text(
                        'Register',
                        style: GoogleFonts.poppins(
                          fontSize: screenHeight * 0.04, 
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Create your new account',
                        style: GoogleFonts.inter(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),

                  // ช่องกรอกข้อมูล (ลดระยะห่างลง)
                  Column(
                    children: [
                      _buildInputBox("Name"),
                      const SizedBox(height: 10),
                      _buildInputBox("E-mail"),
                      const SizedBox(height: 10),
                      _buildInputBox("Phone"),
                      const SizedBox(height: 10),
                      _buildInputBox("Password", isPassword: true),
                    ],
                  ),

                  // Terms & Conditions
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: GoogleFonts.inter(color: Colors.black, fontSize: 15),
                      children: const [
                        TextSpan(text: "By signing up you agree to our "),
                        TextSpan(
                          text: "Terms & Conditions",
                          style: TextStyle(color: Color(0xFFF9A825), ),
                        ),
                        TextSpan(text: " and "),
                        TextSpan(
                          text: "Privacy Policy",
                          style: TextStyle(color: Color(0xFFF9A825), ),
                        ),
                      ],
                    ),
                  ),

                  // ปุ่ม Sign Up
                  SizedBox(
                    width: double.infinity,
                    height: 50.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF9A825),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
                        elevation: 0,
                      ),
                      child: Text(
                        'Sign Up',
                        style: GoogleFonts.poppins(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),

                  // OR Divider
                  Row(
                    children: [
                      const Expanded(child: Divider()),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text("OR", style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 18)),
                      ),
                      const Expanded(child: Divider()),
                    ],
                  ),

                  // Social Icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildSocialIcon('assets/images/google.png'),
                      const SizedBox(width: 20),
                      _buildSocialIcon('assets/images/facebook2.png'),
                      const SizedBox(width: 20),
                      _buildSocialIcon('assets/images/apple.png'),
                    ],
                  ),

                  // ลิงก์ Log In
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an Account? "),
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Text(
                          'Log In',
                          style: TextStyle(color: Color(0xFFF9A825), fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10), // เว้นล่างสุดนิดหน่อย
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInputBox(String hint, {bool isPassword = false}) {
    return Container(
      height: 50, 
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: GoogleFonts.inter(color: Colors.grey[400], fontSize: 13),
          contentPadding: const EdgeInsets.symmetric(horizontal: 15),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget _buildSocialIcon(String iconPath) {
    return Image.asset(iconPath, height: 35, fit: BoxFit.contain);
  }
}