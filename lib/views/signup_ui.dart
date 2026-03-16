// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupUi extends StatefulWidget {
  const SignupUi({super.key});

  @override
  State<SignupUi> createState() => _SignupUiState();
}

class _SignupUiState extends State<SignupUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDE7),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 50, // ปรับให้พอดีกับ Safe Area
            bottom: 45,
            left: 30,
            right: 30,
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ส่วนปุ่มไอคอนย้อนกลับ
                IconButton(
                  padding: EdgeInsets.zero,
                  alignment: Alignment.centerLeft,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 30,
                    color: Colors.black,
                  ),
                ),

                SizedBox(height: 10),

                // ส่วนรูปภาพ Illustration ตรงกลาง
                Center(
                  child: Image.asset(
                    'assets/images/logo.png', // เปลี่ยนเป็นชื่อไฟล์รูปภาพของคุณ
                    width: 200,
                    height: 200,
                    fit: BoxFit.contain,
                  ),
                ),

                SizedBox(height: 20),

                // ส่วนข้อความ Get On Board!
                Text(
                  'Get On Board!',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                ),

                SizedBox(height: 5),

                // ส่วนข้อความ Create your profile...
                Text(
                  'Create your profile to start your journey.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),

                SizedBox(height: 30),

                // ส่วนป้อน Full Name
                TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(
                      Icons.person_outline,
                      color: Colors.grey,
                    ),
                    hintText: 'Full Name',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),

                SizedBox(height: 20),

                // ส่วนป้อน E-Mail
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(
                      Icons.mail_outline,
                      color: Colors.grey,
                    ),
                    hintText: 'E-Mail',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),

                SizedBox(height: 20),

                // ส่วนป้อน Phone No
                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: FaIcon(
                      FontAwesomeIcons.hashtag,
                      color: Colors.grey,
                      size: 20,
                    ),
                    hintText: 'Phone No',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),

                SizedBox(height: 20),

                // ส่วนป้อน Password
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: FaIcon(
                        FontAwesomeIcons.fingerprint,
                        color: Colors.grey,
                        size: 22,
                      ),
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),

                SizedBox(height: 30),

                // ส่วนปุ่ม SIGNUP
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'SIGNUP',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      55,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: Colors.black,
                  ),
                ),

                SizedBox(height: 20),

                // ส่วนข้อความ OR
                Center(
                  child: Text(
                    'OR',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),

                SizedBox(height: 20),

                // ส่วนปุ่ม Sign-in with Google
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/googlelogo.png', // เปลี่ยนชื่อไฟล์โลโก้ตามที่คุณมี
                        width: 25,
                        height: 25,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Sign-in with Google',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      55,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),

                SizedBox(height: 30),

                // ส่วนข้อความ Already have an account? LOGIN
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(fontSize: 15),
                    ),
                    TextButton(
                      onPressed: () {
                        // ใส่คำสั่งนำทางกลับไปหน้า Login ที่นี่
                        Navigator.pop(context);
                      },
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
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
