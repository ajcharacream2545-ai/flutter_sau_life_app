// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_sau_life_app/views/login_ui.dart';
import 'package:flutter_sau_life_app/views/signup_ui.dart';

class HomeUi extends StatelessWidget {
  const HomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: const Color(0xFFFFFDE7), 
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 120,
              ),
              Image.asset(
                'assets/images/logo.png',
                width: 280,
                height: 280,
                fit: BoxFit.cover,
              ),
             
              const SizedBox(
                height: 200, 
              ),
              const Text(
                'Welcome to DTI-SAU',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF424242), 
                ),
              ),
              const Text(
                'มหาวิทยาลัยเอเชียอาคเนย์',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF616161),
                ),
              ),
              
              const Text(
                'Created by Ajchara ❤ ✨', 
                style: TextStyle(
                  fontSize: 15, 
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF757575),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginUi(),
                        ),
                      );
                    },
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold, // เพิ่มความหนาให้ตัวอักษร
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: const Size(
                        150,
                        50,
                      ),
                      side: const BorderSide(color: Colors.black, width: 1.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), 
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignupUi(),
                        ),
                      );
                    },
                    child: const Text(
                      'SIGNUP',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(
                        150,
                        50,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.black,
                      elevation: 3, 
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30,), 
            ],
          ),
        ),
      ),
    );
  }
}