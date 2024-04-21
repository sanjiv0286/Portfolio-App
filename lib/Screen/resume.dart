// import 'dart:io';
import 'package:flutter/material.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Resume Screen Content', style: TextStyle(fontSize: 24)),
    );
  }
}
// class ResumeScreen extends StatelessWidget {
//   const ResumeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return PDFView(
//       filePath: 'assets/resume.pdf', // Path to your PDF file
//       autoSpacing: true,
//       pageSnap: true,
//       pageFling: true,
//       fitEachPage: true,
//       defaultPage: 0,
//       fitPolicy: FitPolicy.BOTH,
//       onError: (error) {
//         stdout.write(error);
//       },
//     );
//   }
// }
