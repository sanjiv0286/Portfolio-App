import 'package:flutter/material.dart';
import 'components/signup_body.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignUpPage'),
      ),
      body: const SignUpPageBody(),
    );
  }
}
