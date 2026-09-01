import 'package:flutter/material.dart';
import 'registerPage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),

              // Image
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.network(
                    "https://i.pinimg.com/1200x/c8/3d/0a/c83d0a804b5194e8352e44fa0383c09b.jpg",
                    width: 260,
                    height: 220,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 35),

              // Title
              const Text(
                "Login",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFD32F2F),
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                "Please Sign in to Continue",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 30),

              // Username
              const Text(
                "Username",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 8),

              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  hintText: "Masukan Username",
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  prefixIcon: const Icon(
                    Icons.person_outline,
                    color: Color(0xFFD32F2F),
                  ),
                  filled: true,
                  fillColor: const Color(0xFFFFF5F5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      color: Color(0xFFD32F2F),
                      width: 1.5,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 18),

              // Password
              const Text(
                "Password",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 8),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Masukan Password",
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  prefixIcon: const Icon(
                    Icons.lock_outline,
                    color: Color(0xFFD32F2F),
                  ),
                  suffixIcon: const Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.grey,
                  ),
                  filled: true,
                  fillColor: const Color(0xFFFFF5F5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      color: Color(0xFFD32F2F),
                      width: 1.5,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 8),

              // Remember Data
              CheckboxListTile(
                contentPadding: EdgeInsets.zero,
                activeColor: const Color(0xFFD32F2F),
                title: const Text(
                  "Remember Me",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                value: false,
                onChanged: (val) {},
                controlAffinity: ListTileControlAffinity.leading,
              ),

              const SizedBox(height: 15),

              // Sign In Button
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      "/home",
                      arguments: {
                        "nama" : usernameController.text, 
                        "umur" : 17
                      }
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD32F2F),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 22),

              // Sign Up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't Have Account?",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Color(0xFFD32F2F),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}