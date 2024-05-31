// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  // myAchieve(String num, String type) {
  //   return Row(
  //     children: [
  //       Text(
  //         num,
  //         style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
  //       ),
  //       Container(
  //         margin: const EdgeInsets.only(top: 10),
  //         child: Text(type),
  //       ),
  //     ],
  //   );
  // }

  // myspec(icon, text) {
  //   return SizedBox(
  //     width: 105,
  //     height: 115,
  //     child: Card(
  //       margin: const EdgeInsets.all(0),
  //       color: const Color(0xff252525),
  //       // color: Theme.of(context).textTheme.bodyLarge!.color,

  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(15),
  //       ),
  //       // ignore: avoid_unnecessary_containers
  //       child: Container(
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             Icon(
  //               // Icons.android,
  //               icon,
  //               color: Colors.white,
  //               // color: Theme.of(context).textTheme.bodyLarge!.color,
  //             ),
  //             const SizedBox(
  //               height: 10,
  //             ),
  //             Text(
  //               // "Android",
  //               text,
  //               style: const TextStyle(
  //                 color: Colors.white,
  //                 // color: Theme.of(context).textTheme.bodyLarge!.color,

  //                 fontSize: 16,
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    Color backgroundColor = isDarkMode ? const Color(0xff252525) : Colors.blue;

    return Scaffold(
      // backgroundColor: Colors.black,
      // backgroundColor: Theme.of(context).colorScheme.background,
      backgroundColor: backgroundColor,
      extendBodyBehindAppBar: true,

      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 5),
              child: ShaderMask(
                shaderCallback: (rect) {
                  return const LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent],
                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Center(
                  child: Image.asset(
                    'assets/sk-2.png',
                    // 'assets/sk.png',
                    // height: 400,
                    height: MediaQuery.of(context).size.height,
                    // width: MediaQuery.of(context).size.width * 0.95,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.35),
              child: Column(
                children: [
                  const Spacer(),
                  Text(
                    'Hello I am',
                    style: TextStyle(
                      // color: Colors.white,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                      fontSize: 27,
                      // fontFamily: "Soho",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Sanjiv Kushwaha',
                    style: TextStyle(
                      // color: Colors.white,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      // fontFamily: "Soho",
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Software Developer',
                    style: TextStyle(
                      // color: Colors.white,
                      // fontFamily: "Soho",
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 120,
                    // width: MediaQuery.of(context).size.width * 0.3,

                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white, // Background Color
                      ),
                      child: const Text('Hire Me'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
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
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            //       color: Theme.of(context).textTheme.bodyLarge!.color,

                            'assets/images/favicon-1.ico', // Replace 'favicon.png' with the path to your favicon icon
                            width: 25, // Adjust the width as needed
                            height: 25, // Adjust the height as needed
                          ),
                        ),
                      ),
                      // IconButton(
                      //     onPressed: () {},
                      //     icon: Icon(
                      //       FontAwesomeIcons.instagram,
                      //       // color: Colors.white,
                      //       color: Theme.of(context).textTheme.bodyLarge!.color,
                      //     )),
                      // IconButton(
                      //     onPressed: () {},
                      //     icon: Icon(
                      //       FontAwesomeIcons.linkedin,
                      //       // color: Colors.white,
                      //       color: Theme.of(context).textTheme.bodyLarge!.color,
                      //     )),
                      // IconButton(
                      //     onPressed: () {},
                      //     icon: Icon(
                      //       FontAwesomeIcons.github,
                      //       // color: Colors.white,
                      //       color: Theme.of(context).textTheme.bodyLarge!.color,
                      //     )),
                      IconButton(
                        // selectedIcon: const FaIcon(FontAwesomeIcons.github),
                        // iconSize: 30,
                        onPressed: () {
                          // Navigate to GitHub page
                          launch("https://github.com/sanjiv0286");
                        },
                        // icon: const FaIcon(FontAwesomeIcons.github),
                        icon: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/favicon-3.ico', // Replace 'favicon.png' with the path to your favicon icon
                            width: 25, // Adjust the width as needed
                            height: 25, // Adjust the height as needed
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            launch(
                                "https://x.com/KissiMissi382?t=9NyrXjUfATWY7Fo4LdOxPA&s=09");
                          },
                          icon: Icon(
                            FontAwesomeIcons.twitter,
                            // color: Colors.white,
                            color: Theme.of(context).textTheme.bodyLarge!.color,
                          )),
                      // IconButton(
                      //   onPressed: () {},
                      //   icon: Icon(
                      //     FontAwesomeIcons.facebook,
                      //     // color: Colors.white,
                      //     color: Theme.of(context).textTheme.bodyLarge!.color,
                      //   ),
                      // ),
                      IconButton(
                        // iconSize: 30,
                        onPressed: () {
                          // Navigate to Facebook page
                          launch(
                              "https://www.facebook.com/profile.php?id=100072588787099");
                        },
                        icon: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/favicon-2.ico', // Replace 'favicon.png' with the path to your favicon icon
                            width: 25, // Adjust the width as needed
                            height: 25, // Adjust the height as needed
                          ),
                        ),
                      ),
                      IconButton(
                        // selectedIcon: const FaIcon(FontAwesomeIcons.instagram),
                        // iconSize: 30,

                        onPressed: () {
                          // Navigate to Instagram page

                          launch(
                              "https://www.instagram.com/sanjiv_kushwaha_0286/");
                        },
                        // icon: const FaIcon(FontAwesomeIcons.instagram),
                        icon: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/favicon.ico', // Replace 'favicon.png' with the path to your favicon icon
                            width: 25, // Adjust the width as needed
                            height: 25, // Adjust the height as needed
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  // const SizedBox(
                  //   height: 5,
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
      // **************************************
      //Floating Action Button
      // floatingActionButton: MediaQuery.of(context).size.width < 600
      //     ? FloatingActionButton.small(
      //         onPressed: () {
      //           _showBottomSheet(context);
      //         },
      //         child: const Icon(Icons.add),
      //       )
      //     : FloatingActionButton(
      //         onPressed: () {
      //           _showBottomSheet(context);
      //         },
      //         child: const Icon(Icons.add),
      //       ),
    );
  }

  // void _showBottomSheet(BuildContext context) {
  //   showModalBottomSheet(
  //     // backgroundColor: const Color.fromARGB(255, 248, 249, 253),
  //     context: context,
  //     elevation: 3,
  //     builder: (context) {
  //       //Scrolling given for content in Container()
  //       return SingleChildScrollView(
  //         child: Container(
  //           padding: EdgeInsets.only(
  //               bottom: MediaQuery.of(context).viewInsets.bottom),
  //           child: Container(
  //             //Create a Column to display it's content
  //             height: 600,
  //             width: 400,
  //             // padding: const EdgeInsets.all(20),
  //             padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
  //             decoration: const BoxDecoration(
  //               borderRadius: BorderRadius.only(
  //                 topRight: Radius.circular(20),
  //                 topLeft: Radius.circular(20),
  //               ),
  //             ),
  //             //Create a Column to display it's content
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                   children: [
  //                     myAchieve('78', "project"),
  //                     myAchieve('65', "Client"),
  //                     myAchieve('90', "Message"),
  //                   ],
  //                 ),
  //                 const SizedBox(
  //                   height: 30,
  //                 ),
  //                 const Text(
  //                   "Specialized in",
  //                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  //                 ),
  //                 const SizedBox(
  //                   height: 10,
  //                 ),
  //                 Column(
  //                   children: [
  //                     Row(
  //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                       children: [
  //                         myspec(FontAwesomeIcons.c, 'C/C++'),
  //                         myspec(FontAwesomeIcons.java, 'Java'),
  //                         myspec(Icons.javascript, 'Javascript'),
  //                       ],
  //                     ),
  //                     const SizedBox(
  //                       height: 10,
  //                     ),
  //                     Row(
  //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                       children: [
  //                         myspec(FontAwesomeIcons.python, 'Python'),
  //                         myspec(Icons.web_asset, 'HTML/CSS'),
  //                         myspec(Icons.flutter_dash, 'Dart'),
  //                       ],
  //                     ),
  //                     const SizedBox(
  //                       height: 10,
  //                     ),
  //                     Row(
  //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                       children: [
  //                         myspec(FontAwesomeIcons.dashcube, 'DSA'),
  //                         myspec(FontAwesomeIcons.dashcube, 'Algorithms'),
  //                         myspec(Icons.android, 'Firebase'),
  //                       ],
  //                     ),
  //                   ],
  //                 )
  //               ],
  //             ),
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }
}
