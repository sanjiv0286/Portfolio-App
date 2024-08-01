import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:portfolio/custom_loding.dart';
import 'package:portfolio/homescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      // Navigator.of(context).pushReplacement(
      // MaterialPageRoute(builder: (_) => OnboardingScreen()));
      // *navigation using getx
      // Get.off(() => const MyHomePage());
      Get.off(() => const MyHomePage());
      // Get.off(() => const OtpScreenPage());
      // Navigator.of(context).pushReplacement(MaterialPageRoute(
      //     builder: (_) =>
      //         Pref.showOnboarding ? OnboardingScreen() : const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    // mq = MediaQuery.sizeOf(context);
    // final screenSize = MediaQuery.of(context).size;
    // double loadingSize =
    //     screenSize.width * 0.3; // Adjust the loading size as needed
    // double loading = screenSize.height * 0.3;
    return const Scaffold(
      // backgroundColor: Colors.transparent,
      body: SizedBox(
        // width: double.maxFinite,
        // width: loadingSize,
        // height: loading,

        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Spacer(
                  // flex: 2,
                  ),
              Expanded(
                flex: 10,
                child: CustomLoading(),
              ),
              // Spacer(),
              SizedBox(
                height: 2,
              ),
              Expanded(
                flex: 10,
                child: SecondLoading(),
              ),
              Spacer(
                  // flex: 2,
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
