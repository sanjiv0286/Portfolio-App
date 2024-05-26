// ***********************************************
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portfolio/Screen/contact.dart';
import 'package:portfolio/homescreen.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: const Text(
          'About Me',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Hi! I'm Sanjiv Kushwaha",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              "Passionate and seasoned Product Designer with 10 years of experience translating ideas into visually stunning, user-centric experiences. Proficient in Figma, I excel in collaborative, cross-functional environments.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            const Text(
              "🚀 Key Strengths",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text("• Innovation-driven mindset"),
            const Text("• Versatility across mobile and web design"),
            const Text("• Effective communication and collaboration"),
            const SizedBox(height: 24),
            const Text(
              "🏆 Achievements",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
                "Contributed to [mention notable projects or achievements], earning recognition for excellence and innovation in product design."),
            const SizedBox(height: 24),
            const Text(
              "🌟 Future Focus",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
                "Committed to staying ahead of design trends, I aim to craft impactful designs that elevate user experiences."),
            const SizedBox(height: 8),
            const Text(
                "Let's create design stories that resonate and inspire."),
            const SizedBox(
              height: 24,
              width: double.infinity,
            ),
            const SizedBox(
              height: 2,
              // width: double.infinity,
            ),
            const Divider(
              color: Colors.black, // Set the color of the line
              thickness: 1, // Set the thickness of the line
              height: 20, // Set the height of the line (optional)
              indent: 0, // Set the left indentation of the line (optional)
              endIndent: 0, // Set the right indentation of the line (optional)
            ),
            const SizedBox(
              height: 2,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.offAll(
                      () => const MyHomePage(),
                      arguments: 2,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(150, 50),
                  ),
                  child: const Text('Resume'),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Get.offAll(
                      () => const MyHomePage(),
                      arguments: 4,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(150, 50),
                  ),
                  child: const Text('Projects'),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => const ContactScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(150, 50),
                  ),
                  child: const Text('Contact'),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  // selectedIcon: const FaIcon(FontAwesomeIcons.github),
                  // iconSize: 30,
                  onPressed: () {
                    // Navigate to GitHub page
                    launch("https://github.com/sanjiv0286");
                  },
                  // icon: const FaIcon(FontAwesomeIcons.github),
                  icon: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/images/favicon-3.ico', // Replace 'favicon.png' with the path to your favicon icon
                      width: 30, // Adjust the width as needed
                      height: 30, // Adjust the height as needed
                    ),
                  ),
                ),
                IconButton(
                  // selectedIcon: const FaIcon(FontAwesomeIcons.instagram),
                  // iconSize: 30,

                  onPressed: () {
                    // Navigate to Instagram page
                    launch("https://www.instagram.com/sanjiv_kushwaha_0286/");
                  },
                  // icon: const FaIcon(FontAwesomeIcons.instagram),
                  icon: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/images/favicon.ico', // Replace 'favicon.png' with the path to your favicon icon
                      width: 30, // Adjust the width as needed
                      height: 30, // Adjust the height as needed
                    ),
                  ),
                ),
                IconButton(
                  // iconSize: 30,
                  onPressed: () {
                    // Navigate to Facebook page
                    launch(
                      "https://www.facebook.com/profile.php?id=100072588787099",
                    );
                  },
                  // icon: const Icon(Icons.facebook),
                  icon: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/images/favicon-2.ico', // Replace 'favicon.png' with the path to your favicon icon
                      width: 30, // Adjust the width as needed
                      height: 30, // Adjust the height as needed
                    ),
                  ),
                ),
                IconButton(
                  // iconSize: 30,
                  onPressed: () {
                    // Navigate to LinkedIn page
                    launch(
                      "https://linkedin.com/in/sanjiv-kushwaha101/",
                    );
                  },
                  // icon: const FaIcon(FontAwesomeIcons.linkedin),
                  icon: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/images/favicon-1.ico', // Replace 'favicon.png' with the path to your favicon icon
                      width: 30, // Adjust the width as needed
                      height: 30, // Adjust the height as needed
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
