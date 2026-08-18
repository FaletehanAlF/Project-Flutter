import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),

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

              const Text(
                "Register",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFD32F2F),
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                "Please Sign Up to Continue",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Username",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 8),

              TextField(
                decoration: InputDecoration(
                  hintText: "Masukan Username",
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
                ),
              ),

              const SizedBox(height: 18),

              const Text(
                "Telepon",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 8),

              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "Masukan Telepon",
                  prefixIcon: const Icon(
                    Icons.phone_outlined,
                    color: Color(0xFFD32F2F),
                  ),
                  filled: true,
                  fillColor: const Color(0xFFFFF5F5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 18),

              const Text(
                "Password",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 8),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Masukan Password",
                  prefixIcon: const Icon(
                    Icons.lock_outline,
                    color: Color(0xFFD32F2F),
                  ),
                  filled: true,
                  fillColor: const Color(0xFFFFF5F5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 18),

              const Text(
                "Confirm Password",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 8),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Konfirmasi Password",
                  prefixIcon: const Icon(
                    Icons.lock_outline,
                    color: Color(0xFFD32F2F),
                  ),
                  filled: true,
                  fillColor: const Color(0xFFFFF5F5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 8),

              CheckboxListTile(
                contentPadding: EdgeInsets.zero,
                activeColor: const Color(0xFFD32F2F),
                title: const Text(
                  "Remember Me",
                  style: TextStyle(fontSize: 14),
                ),
                value: false,
                onChanged: (val) {},
                controlAffinity: ListTileControlAffinity.leading,
              ),

              const SizedBox(height: 15),

              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD32F2F),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 22),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already Have Account?",
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Sign In",
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