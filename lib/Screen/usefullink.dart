// // ignore_for_file: deprecated_member_use

// import 'package:flutter/material.dart';

// class UsefulLink extends StatelessWidget {
//   const UsefulLink({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         // leading:
//         //     IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
//         // backgroundColor: Colors.blue,
//         title: const Text('Useful Links'),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         decoration: const BoxDecoration(
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(10),
//                           ),
//                           color: Colors.amberAccent,
//                         ),
//                         // height: 200,
//                         // width: 200,
//                         height: MediaQuery.of(context).size.height * 0.20,
//                         width: MediaQuery.of(context).size.width * 0.40,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         decoration: const BoxDecoration(
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(10),
//                           ),
//                           color: Colors.blueGrey,
//                         ),
//                         // height: 200,
//                         // width: 200,
//                         height: MediaQuery.of(context).size.height * 0.20,
//                         width: MediaQuery.of(context).size.width * 0.40,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               // const Spacer(),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         decoration: const BoxDecoration(
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(10),
//                           ),
//                           color: Colors.amberAccent,
//                         ),
//                         // height: 200,
//                         // width: 200,
//                         height: MediaQuery.of(context).size.height * 0.20,
//                         width: MediaQuery.of(context).size.width * 0.40,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         decoration: const BoxDecoration(
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(10),
//                           ),
//                           color: Colors.blueGrey,
//                         ),
//                         // height: 200,
//                         // width: 200,
//                         height: MediaQuery.of(context).size.height * 0.20,
//                         width: MediaQuery.of(context).size.width * 0.40,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         decoration: const BoxDecoration(
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(10),
//                           ),
//                           color: Colors.amberAccent,
//                         ),
//                         // height: 200,
//                         // width: 200,
//                         height: MediaQuery.of(context).size.height * 0.20,
//                         width: MediaQuery.of(context).size.width * 0.40,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         decoration: const BoxDecoration(
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(10),
//                           ),
//                           color: Colors.blueGrey,
//                         ),
//                         // height: 200,
//                         // width: 200,
//                         height: MediaQuery.of(context).size.height * 0.20,
//                         width: MediaQuery.of(context).size.width * 0.40,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         decoration: const BoxDecoration(
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(10),
//                           ),
//                           color: Colors.amberAccent,
//                         ),
//                         // height: 200,
//                         // width: 200,
//                         height: MediaQuery.of(context).size.height * 0.20,
//                         width: MediaQuery.of(context).size.width * 0.40,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         decoration: const BoxDecoration(
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(10),
//                           ),
//                           color: Colors.blueGrey,
//                         ),
//                         // height: 200,
//                         // width: 200,
//                         height: MediaQuery.of(context).size.height * 0.20,
//                         width: MediaQuery.of(context).size.width * 0.40,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// **************************************************
// import 'package:flutter/material.dart';

// class UsefulLink extends StatelessWidget {
//   const UsefulLink({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Useful Links'),
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

// ignore_for_file: deprecated_member_use

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
// ***********************************************************************
// **********************************************************************
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UsefulLink extends StatelessWidget {
  const UsefulLink({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Useful Links'),
        // backgroundColor: Theme.of(context).brightness == Brightness.dark
        //     ? Colors.lightGreen
        //     : Colors.black12,
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
                        'text': 'LinkedIn',
                        'url':
                            'https://www.linkedin.com/in/sanjiv-kushwaha101/',
                        'iconData': FontAwesomeIcons.linkedin,
                      },
                      {
                        'text': 'Instagram',
                        'url':
                            'https://www.instagram.com/sanjiv_kushwaha_0286/',
                        'iconData': FontAwesomeIcons.instagram,
                      },
                    ],
                  ),
                  _buildRow(
                    context,
                    constraints,
                    [
                      {
                        'text': 'GitHub',
                        'url': 'https://github.com/sanjiv0286',
                        'iconData': FontAwesomeIcons.github,
                      },
                      {
                        'text': 'Facebook',
                        'url':
                            'https://www.facebook.com/profile.php?id=100072588787099',
                        // 'iconData': Icons.camera,
                        'iconData': FontAwesomeIcons.facebook,
                      },
                    ],
                  ),
                  _buildRow(
                    context,
                    constraints,
                    [
                      {
                        'text': 'WhatsApp',
                        'url':
                            'https://wa.me/+918005835887?text=Hello%20Sanjiv ,',
                        'iconData': FontAwesomeIcons.whatsapp,
                      },
                      {
                        'text': 'Resume',
                        'url':
                            'https://drive.google.com/file/d/1h2IhiR2B9XzpfIRlpRPx8ET4ljGVNdpk/view?usp=sharing',
                        'iconData': FontAwesomeIcons.sheetPlastic,
                      },
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
          );
        }).toList(),
      ),
    );
  }

  Widget _buildClickableContainer(BuildContext context, double width,
      double height, String text, String url, IconData iconData) {
    final iconSize = MediaQuery.of(context).size.width * 0.1;
    final textSize = MediaQuery.of(context).size.width * 0.04;

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
              children: [
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
