import 'package:flutter/material.dart';

class OtpScreenPageBody extends StatelessWidget {
  const OtpScreenPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Code for OTP screen body
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                const Text('Please enter the OTP sent to your mobile number'),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'OTP',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Handle verify OTP button press
                  },
                  child: const Text('Verify OTP'),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    // Handle resend OTP button press
                  },
                  child: const Text('Resend OTP'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
