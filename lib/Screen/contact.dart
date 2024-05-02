// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/homescreen.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  void sendEmail() async {
    // Replace 'recipient@example.com' with the recipient email address
    const String recipient = 'collegeofficial6@gmail.com';

    // Replace 'Subject' with your desired email subject
    const String subject = '';

    // Replace 'Hello, Email!' with your desired email body
    const String body = '';

    // Build the Mailto instance with recipient, subject, and body
    const mailtoLink = 'mailto:$recipient?subject=$subject&body=$body';

    // Encode the Mailto link to handle special characters properly
    final encodedUri = Uri.encodeFull(mailtoLink);

    // Launch the email client with the encoded Mailto link
    await launch(encodedUri);
  }

  final mobileNo = '+918005835887';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contact',
          // style: TextStyle(color: Colors.white),
        ),
        // backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            navigator?.pop(() => const ContactScreen());
          },
        ),
        // automaticallyImplyLeading: false,
        // actions: [
        //   IconButton(
        //     icon: const Icon(
        //         Icons.settings), // Example icon, replace with your icon
        //     onPressed: () {
        //       // Add your action here
        //     },
        //   ),
        // ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/images/contact.png"),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Center(
                  // ignore: sized_box_for_whitespace
                  child: Container(
                    // height: 160,
                    // width: 350,
                    width: MediaQuery.of(context).size.width *
                        0.95, // Adjust width based on screen size

                    child: Card(
                      color: Colors.yellow,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: ListTile(
                              leading: Icon(
                                Icons.person,
                                size: 50,
                                color: Colors.blue,
                              ),
                              title: Text(
                                "Sanjiv Kushwaha",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              subtitle: Text(
                                "😉👀",
                                // style: TextStyle(
                                //   fontWeight: FontWeight.w500,
                                //   fontSize: 16,
                                // ),
                              ),
                            ),
                          ),
                          Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ButtonBar(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      // Adjust spacing
                                      ElevatedButton(
                                        onPressed: () {
                                          sendEmail();
                                        },
                                        style: ButtonStyle(
                                          minimumSize:
                                              MaterialStateProperty.all(
                                            const Size(135, 40),
                                          ), // Adjust the size as needed
                                        ),
                                        child: const Row(
                                          children: [
                                            Icon(Icons.email),
                                            SizedBox(
                                              width: 3,
                                            ),
                                            Text(
                                              ' Email Me ',
                                              style: TextStyle(fontSize: 15),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.01),
                                      ElevatedButton(
                                        onPressed: () {
                                          // sendEmail();
                                          launch('sms: $mobileNo');
                                        },
                                        style: ButtonStyle(
                                          minimumSize:
                                              MaterialStateProperty.all(
                                            const Size(135, 40),
                                          ), // Adjust the size as needed
                                        ),
                                        child: const Row(
                                          children: [
                                            Icon(Icons.sms),
                                            SizedBox(
                                              width: 1,
                                            ),
                                            Text(
                                              ' SMS ',
                                              style: TextStyle(fontSize: 15),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          launch('tel: $mobileNo');
                                        },
                                        style: ButtonStyle(
                                          minimumSize:
                                              MaterialStateProperty.all(
                                            const Size(135, 40),
                                          ), // Adjust the size as needed
                                        ),
                                        child: const Row(
                                          children: [
                                            Icon(Icons.call),
                                            SizedBox(
                                              width: 3,
                                            ),
                                            Text(
                                              ' Contact ',
                                              style: TextStyle(fontSize: 15),
                                            ),
                                          ],
                                        ),
                                      ),
                                      // const SizedBox(width: 40),
                                    ],
                                  ),
                                ],
                              ),
                              // SizedBox(
                              //     width: MediaQuery.of(context).size.width *
                              //         0.0001), // Adjust spacing
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => ResumeScreen()));
                      Get.to(() => const ContactScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 50),
                    ),
                    child: const Text('Resume'),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => ProjectsScreen()));
                      Get.to(() => const ContactScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 50),
                    ),
                    child: const Text('Projects'),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => ContactScreen()));
                      Get.to(() => const MyHomePage());
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 50),
                    ),
                    child: const Text('HomePage'),
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
                          "https://www.facebook.com/profile.php?id=100072588787099");
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
                        "https://www.linkedin.com/in/sanjiv-kushwaha101/",
                        // forceWebView: false,
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
      ),
    );
  }
}

// *************************************************************
