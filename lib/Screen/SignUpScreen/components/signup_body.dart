import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/Screen/LoginScreen/login.dart';

class SignUpPageBody extends StatelessWidget {
  const SignUpPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Code for Signup screen body
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Full Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Handle sign up button press
                    Get.to(() => const LoginPage());
                  },
                  child: const Text('Sign Up'),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    // Handle login button press
                    Get.to(() => const LoginPage());
                  },
                  child: const Text('Already have an account? Log in'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
