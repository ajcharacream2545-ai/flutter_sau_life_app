// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart'; // แนะนำให้ใช้เพื่อให้ฟอนต์สวยเหมือนหน้า Home

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: const Color(0xFFFFFDE7), 
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 50,
            bottom: 45,
            left: 30,
            right: 30,
          ),
          child: Center(
            child: Column(
              children: [
                // ส่วนปุ่มไอคอนย้อนกลับ
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 25,
                      color: Color(0xFF5D4037),
                    ),
                  ),
                ),
                
                // ส่วนรูปภาพ logo (ปรับขนาดให้พอดี)
                Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 140,
                    height: 140,
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(height: 10),

                // ส่วนข้อความ Welcome..., Make it....
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Welcome Back,',
                    style: GoogleFonts.kanit(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF424242),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Make it work, make it right, make it fast.',
                    style: GoogleFonts.kanit(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF757575),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                // ส่วนป้อนอีเมล
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white, // ช่องกรอกสีขาว
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.amber, width: 1.5),
                    ),
                    prefixIcon: const Icon(
                      Icons.person_outline,
                      color: Colors.amber,
                    ),
                    hintText: 'E-mail',
                    hintStyle: GoogleFonts.kanit(color: Colors.grey),
                    contentPadding: const EdgeInsets.all(20),
                  ),
                ),

                const SizedBox(height: 20),

                // ส่วนป้อนรหัสผ่าน
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.amber, width: 1.5),
                    ),
                    prefixIcon: const Padding(
                      padding: EdgeInsets.all(14.0),
                      child: FaIcon(
                        FontAwesomeIcons.fingerprint,
                        color: Colors.amber,
                        size: 18,
                      ),
                    ),
                    hintText: 'Password',
                    hintStyle: GoogleFonts.kanit(color: Colors.grey),
                    contentPadding: const EdgeInsets.all(20),
                    suffixIcon: const Icon(
                      Icons.visibility_off_outlined,
                      color: Colors.grey,
                    ),
                  ),
                ),

                // ส่วนปุ่ม Forget...
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forget Password?',
                      style: GoogleFonts.kanit(
                        color: Colors.blue[700],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // ส่วนปุ่ม Login
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'LOGIN',
                    style: GoogleFonts.kanit(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      55,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 4,
                  ),
                ),

                const SizedBox(height: 25),
                Text(
                  'OR',
                  style: GoogleFonts.kanit(color: Colors.grey[600]),
                ),
                const SizedBox(height: 25),

                // ส่วนปุ่ม Google
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/googlelogo.png',
                        width: 22,
                        height: 22,
                      ),
                      const SizedBox(width: 15),
                      Text(
                        'Sign-in with Google',
                        style: GoogleFonts.kanit(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      55,
                    ),
                    side: const BorderSide(color: Colors.black12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                // ส่วนข้อความ Don't ... กับปุ่ม Sign Up
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: GoogleFonts.kanit(),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Link ไปหน้า SignupUi
                      },
                      child: Text(
                        'Sign Up',
                        style: GoogleFonts.kanit(
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}