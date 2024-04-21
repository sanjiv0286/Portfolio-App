// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:favicon/favicon.dart';

// class MyIconButton extends StatelessWidget {
//   final String url;

//   const MyIconButton({Key? key, required this.url}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<Favicon?>(
//       future: Favicon.get(url),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const IconButton(
//             onPressed: null,
//             icon: FaIcon(FontAwesomeIcons.linkedin),
//           );
//         } else if (snapshot.hasError) {
//           return IconButton(
//             onPressed: () {
//               // Handle error
//             },
//             icon: const FaIcon(FontAwesomeIcons.linkedin),
//           );
//         } else if (snapshot.hasData) {
//           final favicon = snapshot.data!;
//           return IconButton(
//             onPressed: () {
//               // Navigate to LinkedIn page
//               // launch(url);
//             },
//             icon: Image.memory(favicon.bytes),
//           );
//         } else {
//           return const SizedBox();
//         }
//       },
//     );
//   }
// }
