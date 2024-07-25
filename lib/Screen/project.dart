// // import 'package:flutter/material.dart';

// // class ProjectScreen extends StatelessWidget {
// //   const ProjectScreen({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return const Center(
// //       child: Text('Project Screen Content', style: TextStyle(fontSize: 24)),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class ProjectScreen extends StatefulWidget {
//   const ProjectScreen({Key? key}) : super(key: key);

//   @override
//   State<ProjectScreen> createState() => _ProjectScreenState();
// }

// class _ProjectScreenState extends State<ProjectScreen> {
//   projetCard(lang, title, description, star) {
//     return SizedBox(
//       width: MediaQuery.of(context).size.width * 0.9,
//       height: 220,
//       child: Card(
//         color: const Color(0xff262628),
//         child: Container(
//           margin: const EdgeInsets.only(left: 20, top: 30, right: 10),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 lang,
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 18,
//                 ),
//               ),
//               const SizedBox(
//                 height: 15,
//               ),
//               Text(
//                 title,
//                 style: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 30,
//                     fontWeight: FontWeight.w700),
//               ),
//               const SizedBox(
//                 height: 3,
//               ),
//               Text(
//                 description,
//                 style: const TextStyle(color: Colors.white70, fontSize: 16),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 children: [
//                   const Icon(
//                     Icons.star,
//                     color: Colors.white70,
//                     size: 18,
//                   ),
//                   const SizedBox(
//                     width: 4,
//                   ),
//                   Text(
//                     star,
//                     style: const TextStyle(
//                       color: Colors.white70,
//                     ),
//                   ),
//                   Expanded(child: Container()),
//                   IconButton(
//                       onPressed: () {},
//                       icon: const Icon(
//                         FontAwesomeIcons.github,
//                         color: Colors.white,
//                       )),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

// ignore_for_file: deprecated_member_use

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Color(0xff1e1e1e),
//       // backgroundColor: Colors.black,
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         // backgroundColor: const Color(0xff252525),
//         title: const Text(
//           'My Projects',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           margin: const EdgeInsets.only(bottom: 20, top: 10),
//           alignment: Alignment.center,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               projetCard(
//                   'FLUTTER', 'Click 2 Code', 'An online code compiler', '10'),
//               projetCard('JAVA', 'Dot Epid', 'App for Covid 19', '9'),
//               projetCard('PYTHON', 'Face Detection',
//                   'Attendance using face detection.', '8'),
//               projetCard('C++', 'Chess', 'Multiplayer chess engine.', '7'),
//               projetCard(
//                   'FLUTTER', 'Click 2 Code', 'An online code compiler', '10')
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// ***************************************************
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({Key? key}) : super(key: key);

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  // Define a function to launch URLs
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget projectCard(
      String lang, String title, String description, String star, String url) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      // height: MediaQuery.of(context).size.height * 0.8,
      child: GestureDetector(
        onTap: () => _launchURL(url),
        child: Card(
          color: const Color(0xff262628),
          child: Container(
            margin: const EdgeInsets.only(left: 20, top: 30, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  lang,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  description,
                  style: const TextStyle(color: Colors.white70, fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.white70,
                      size: 18,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      star,
                      style: const TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                    Expanded(child: Container()),
                    IconButton(
                        onPressed: () => _launchURL(url),
                        icon: const Icon(
                          FontAwesomeIcons.github,
                          color: Colors.white,
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'My Projects',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(bottom: 20, top: 10),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              projectCard(
                'Flutter, Dart, Android Studio, Vs Code, Android Emulator',
                'Flutter Mini project',
                'Learning Project made for Just fun .',
                '4',
                'https://github.com/sanjiv0286/Flutter-Mini-Project-2',
              ),
              projectCard(
                'Machine Learning , Deep Learning , Python , Streamlit',
                'Diseases Prediction using Machine Learning and streamlit Python Library',
                'For accurate and efficient method for predicting diseases outcomes .',
                '5',
                'https://github.com/sanjiv0286/ML-Project-Multiple-Diseases-Prediction-Using-Streamlit-Library',
              ),
              projectCard(
                'HTML, CSS, JavaScript, Vs Code',
                'Personal Portfolio Website Using Web Dev technology', //
                '👋 This is My Personal Portfolio . This is a Web Dev Project which include all my personal technical stuff .',
                '8',
                'https://starsanjiv.github.io/Sanjiv-Portfolio/',
              ),
              projectCard(
                'Flutter, Dart, Android Studio, Vs Code, Android Emulator',
                'Calculator App',
                'In this Calculator app , you can perform basic arithmetic calculations with the standard calculator.',
                '7',
                'https://github.com/sanjiv0286/Calculator-App',
              ),
              projectCard(
                'Flutter, Dart, Android Studio, Vs Code, Android Emulator',
                'Age Calculator App',
                'Allows users to calculate their age based on their date of birth , offering an intuitive interface where users can input their birthdate and instantly see their age in years, months, and days.',
                '6',
                'https://github.com/sanjiv0286/Age-Calculator',
              ),
              projectCard(
                'Flutter, Dart, Android Studio, Vs Code, Android Emulator',
                'Kalam Quiz App',
                'This is basic Quiz App Using Flutter technology.This is test your Knowledge, what you Know our honourable Former president APJ Abdul kalam.',
                '10',
                'https://github.com/sanjiv0286/KalamQuizApp',
              ),
              projectCard(
                'Flutter, Dart, Android Studio, Vs Code, Android Emulator , Rest Api',
                'Practice API',
                '• This project aims to create a practice API using Flutter and Dart, implementing all standard HTTP methods: GET, POST, PUT, PATCH, and DELETE.\n• The project is designed for understand and practice API integration within a Flutter application, gaining hands-on experience in handling various HTTP requests and managing state in a mobile application.',
                '9',
                'https://github.com/sanjiv0286/Practice-API',
              ),
              projectCard(
                'Flutter, Dart, Rest Api, Firebase,  Android Studio, Vs Code, Android Emulator',
                'Quick News App',
                'News App Using Flutter FrameWork with Firebase authentication and fetch News from newsapi.org',
                '11',
                'https://github.com/sanjiv0286/News-App',
              ),
              projectCard(
                'Flutter, Dart, Android Studio, Vs Code, Android Emulator , shared preferences Database',
                'Notes App',
                '• My Notes is a beautifully designed and highly functional notes app built using Flutter. With My Notes, you can effortlessly create, organize, and manage your notes all in one place.\n• You can create to-do lists, or write detailed notes, My Notes offers a seamless and intuitive user experience.',
                '12',
                'https://github.com/sanjiv0286/Notes-App',
              ),
              projectCard(
                'Flutter, Dart, Android Studio, Vs Code, Android Emulator, Rest Api, Getx Statemanagement, MVVM Architechture',
                'Flutter Portfolio App',
                '• This Flutter Portfolio App is designed using Model-View-ViewModel (MVVM) architecture to showcase personal skills, education, projects, Coding profiles, certifications, and resume through a well-organized and interactive user interface.\n• It features organized tab bars,and supports both light and dark themes for user preference.\n• It handles various exceptions such as no internet connection, real-time connection updates, and invalid API responses.\n• The app also ensures a beautiful and interactive UI for users, with a responsive design for various screen sizes.\n•  To optimize and improve state management, the app utilizes GetX, a powerful Flutter framework.\n• The app is available for both Android and iOS platforms, ensuring a wide reach and a seamless user experience across major mobile operating systems.\n',
                '15',
                'https://github.com/sanjiv0286/Portfolio-Android-App',
              ),
              projectCard(
                'Flutter, Dart, Android Studio, Vs Code, Android Emulator, Rest API, Getx Statemanagement',
                'Rest Countries APIs',
                '• This app is an assignment by Company Digiwise for the Flutter(android/Ios) Developer role.\n• I developed a Flutter application that fetches and displays information about countries using the REST Countries API.\n• The application categorizes countries into continents, provides a search functionality, and includes detailed views for each country with additional information such as the countries flag and description.\n• The app also supports both light and dark themes, ensuring a consistent and user-friendly experience across different user preferences.\n• Data Fetched: Country name, official name, capital(s), population, continent, sub-region, and flag URL.',
                '10',
                'https://github.com/sanjiv0286/Rest-country-Apis',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// ***********************************************************
