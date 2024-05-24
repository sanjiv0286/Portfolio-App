import 'package:flutter/material.dart';
import 'components/otp_body.dart';

class OtpScreenPage extends StatelessWidget {
  const OtpScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OtpScreenPage'),
      ),
      body: const OtpScreenPageBody(),
    );
  }
}
