import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/Screen/SignUpScreen/signup.dart';
import 'package:portfolio/homescreen.dart';

class LoginPageBody extends StatelessWidget {
  const LoginPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Code for Login screen body
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                    // Handle login button press
                    Get.to(() => const MyHomePage());
                  },
                  child: const Text('Login'),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    // Handle forgot password button press
                  },
                  child: const Text('Forgot Password?'),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    // Handle sign up button press
                    Get.to(() => const SignUpPage());
                  },
                  child: const Text('Sign Up'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
