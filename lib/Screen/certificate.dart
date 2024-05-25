// // ignore_for_file: must_be_immutable

// import 'package:flutter/material.dart';

// class CertificateScreen extends StatelessWidget {
//   const CertificateScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: const Text(
//           'Certificates',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           return SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   _buildRow(context, constraints),
//                   _buildRow(context, constraints),
//                   _buildRow(context, constraints),
//                   _buildRow(context, constraints),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildRow(BuildContext context, BoxConstraints constraints) {
//     final itemWidth = constraints.maxWidth * 0.45;
//     final itemHeight = MediaQuery.of(context).size.height * 0.20;

//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Row(
//         children: [
//           _buildContainer(Colors.amberAccent, itemWidth, itemHeight),
//           _buildContainer(Colors.blueGrey, itemWidth, itemHeight),
//         ],
//       ),
//     );
//   }

// // ignore_for_file: deprecated_member_use

// ignore_for_file: deprecated_member_use, duplicate_ignore

//   Widget _buildContainer(Color color, double width, double height) {
//     return Expanded(
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20),
//             color: color,
//           ),
//           height: height,
//           width: width,
//         ),
//       ),
//     );
//   }
// }
// **********************************************************
// **************************************************************
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CertificateScreen extends StatelessWidget {
  const CertificateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Useful Links'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildRow(
                    context,
                    constraints,
                    [
                      {
                        'text': 'Udemy C++ Course',
                        'url':
                            'https://drive.google.com/file/d/1z74uwKytWiuD4EVwtzk0-RzrgwD1b4nX/view?usp=drive_link',
                        'iconData': FontAwesomeIcons.code,
                      },
                    ],
                  ),
                  _buildRow(
                    context,
                    constraints,
                    [
                      {
                        'text': 'APP Development',
                        'url':
                            'https://drive.google.com/file/d/13chFD1NLgiW4aOVsq9o6DARlLA71Aroc/view?usp=drive_link',
                        'iconData': FontAwesomeIcons.android,
                      },
                    ],
                  ),
                  _buildRow(
                    context,
                    constraints,
                    [
                      {
                        'text': 'Hakerrank Problem Solving Basic',
                        'url':
                            'https://drive.google.com/file/d/19Uvz_Hq4_lC3J5QGL_wVwet3lmF4k93H/view?usp=drive_link',
                        'iconData': FontAwesomeIcons.hackerrank,
                      },
                    ],
                  ),
                  _buildRow(
                    context,
                    constraints,
                    [
                      {
                        'text': 'GFG Course Completion Certificates',
                        'url':
                            'https://drive.google.com/file/d/1pT4D-JVPRo9ARslRBk0bq3JBm-q8r4Dm/view?usp=sharing',
                        'iconPath': 'assets/images/favicon_gfg.ico',
                      }
                    ],
                  ),
                  _buildRow(
                    context,
                    constraints,
                    [
                      {
                        'text': 'Internship Completion Certificate',
                        'url':
                            'https://drive.google.com/file/d/1BfXoEI48lBiijyd2bwwMEB7CRl4J-qLg/view?usp=drive_link',
                        'iconData': FontAwesomeIcons.smile,
                      }
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildRow(BuildContext context, BoxConstraints constraints,
      List<Map<String, dynamic>> linkData) {
    final itemWidth = constraints.maxWidth * 0.45;
    final itemHeight = MediaQuery.of(context).size.height * 0.20;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: linkData.map((data) {
          return _buildClickableContainer(
            context,
            itemWidth,
            itemHeight,
            data['text'],
            data['url'],
            data['iconData'],
            data['iconPath'],
          );
        }).toList(),
      ),
    );
  }

  Widget _buildClickableContainer(
      BuildContext context,
      double width,
      double height,
      String text,
      String url,
      IconData? iconData,
      String? iconPath) {
    final iconSize = MediaQuery.of(context).size.width * 0.15;
    final textSize = MediaQuery.of(context).size.width * 0.05;

    return Expanded(
      child: GestureDetector(
        onTap: () async {
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            throw 'Could not launch $url';
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.blue
                  : Colors.black87,
            ),
            height: height,
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (iconPath != null)
                  Image.asset(iconPath, width: iconSize, height: iconSize)
                else
                  Icon(iconData, size: iconSize, color: Colors.white),
                const SizedBox(height: 10),
                Text(text,
                    style: TextStyle(color: Colors.white, fontSize: textSize)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
