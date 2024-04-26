// // ***********************************************************************
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:portfolio/homescreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
//   await SystemChrome.setPreferredOrientations(
//       [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
//   runApp(const MyApp());
// }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final ThemeMode _currentThemeMode = ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: _currentThemeMode,
      theme: ThemeData.light(), // Define your light theme
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,

      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),

      home: const MyHomePage(),
    );
  }
}
// ***********************************
// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';

// void main() {
//   runApp(const MaterialApp(
//     home: PDFViewerPage(),
//   ));
// }

// class PDFViewerPage extends StatefulWidget {
//   const PDFViewerPage({super.key});

//   @override
//   PDFViewerPageState createState() => PDFViewerPageState();
// }

// class PDFViewerPageState extends State<PDFViewerPage> {
//   String pdfAssetPath =
//       "assets/resume.pdf"; // Change this to your PDF file path

// ignore_for_file: avoid_print

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Resume'),
//       ),
//       body: Center(
//         child: SizedBox(
//           height: MediaQuery.of(context).size.height * 0.8,
//           width: MediaQuery.of(context).size.width * 0.8,
//           child: PDFView(
//             filePath: pdfAssetPath,
//             enableSwipe: true,
//             swipeHorizontal: true,
//             autoSpacing: false,
//             pageFling: false,
//             pageSnap: true,
//             defaultPage: 0,
//             fitPolicy: FitPolicy.WIDTH,
//             onError: (error) {
//               stdout.write(error);
//             },
//             onRender: (pages) {
//               stdout.write("Pages: $pages");
//             },
//             onPageError: (page, error) {
//               stdout.write("$page: $error");
//             },
//             onViewCreated: (PDFViewController controller) {
//               // Set the controller to the controller property so that it can be used later
//             },
//             onPageChanged: (int? page, int? total) {
//               stdout.write('page change: $page/$total');
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
// ************************************
// import 'dart:async';
// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   MyAppState createState() => MyAppState();
// }

// class MyAppState extends State<MyApp> {
//   String _resumePath = "";

//   @override
//   void initState() {
//     super.initState();
//     loadResumePdf();
//   }

//   Future<void> loadResumePdf() async {
//     try {
//       final resumeFile = await fromAsset('assets/resume.pdf', 'resume.pdf');
//       setState(() {
//         _resumePath = resumeFile.path;
//       });
//     } catch (e) {
//       print("Error loading resume PDF: $e");
//     }
//   }

//   Future<File> fromAsset(String asset, String filename) async {
//     try {
//       final dir = await getApplicationDocumentsDirectory();
//       final file = File("${dir.path}/$filename");
//       final data = await rootBundle.load(asset);
//       final bytes = data.buffer.asUint8List();
//       await file.writeAsBytes(bytes, flush: true);
//       return file;
//     } catch (e) {
//       throw Exception('Error parsing asset file: $e');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter PDF View',
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Resume PDF'),
//         ),
//         body: Center(
//           child: _resumePath.isEmpty
//               ? const CircularProgressIndicator()
//               : PDFViewer(path: _resumePath),
//         ),
//       ),
//     );
//   }
// }

// class PDFViewer extends StatelessWidget {
//   final String path;

//   const PDFViewer({super.key, required this.path});

//   @override
//   Widget build(BuildContext context) {
//     return PDFView(
//       filePath: path,
//       enableSwipe: true,
//       swipeHorizontal: true,
//       autoSpacing: false,
//       pageFling: true,
//       pageSnap: true,
//       fitPolicy: FitPolicy.BOTH,
//       preventLinkNavigation: false,
//       onError: (error) {
//         print('PDFView error: $error');
//       },
//       onPageError: (page, error) {
//         print('PDFView page $page error: $error');
//       },
//       onViewCreated: (PDFViewController pdfViewController) {
//         // You can use the controller here if needed
//       },
//       onLinkHandler: (String? uri) {
//         print('PDFView goto uri: $uri');
//       },
//       onPageChanged: (int? page, int? total) {
//         print('PDFView page change: $page/$total');
//       },
//     );
//   }
// }
// ************************************************
// import 'dart:async';
// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   MyAppState createState() => MyAppState();
// }

// class MyAppState extends State<MyApp> {
//   String _resumePath = "";

//   @override
//   void initState() {
//     super.initState();
//     loadResumePdf();
//   }

//   Future<void> loadResumePdf() async {
//     try {
//       final resumeFile = await fromAsset('assets/resume.pdf', 'resume.pdf');
//       setState(() {
//         _resumePath = resumeFile.path;
//       });
//     } catch (e) {
//       print("Error loading resume PDF: $e");
//     }
//   }

//   Future<File> fromAsset(String asset, String filename) async {
//     try {
//       final dir = await getApplicationDocumentsDirectory();
//       final file = File("${dir.path}/$filename");
//       final data = await rootBundle.load(asset);
//       final bytes = data.buffer.asUint8List();
//       await file.writeAsBytes(bytes, flush: true);
//       return file;
//     } catch (e) {
//       throw Exception('Error parsing asset file: $e');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter PDF View',
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Resume PDF'),
//           actions: [
//             IconButton(
//               icon: const Icon(Icons.share),
//               onPressed: () {
//                 if (_resumePath.isNotEmpty) {
//                   // Share.shareFiles([_resumePath]);
//                 }
//               },
//             ),
//             IconButton(
//               icon: const Icon(Icons.download),
//               onPressed: () {
//                 // You can implement the download functionality here if needed
//               },
//             ),
//           ],
//         ),
//         body: Center(
//           child: _resumePath.isEmpty
//               ? const CircularProgressIndicator()
//               : Container(
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       color: Colors.black,
//                       width: 1.0,
//                     ),
//                   ),
//                   child: PDFViewer(path: _resumePath),
//                 ),
//         ),
//       ),
//     );
//   }
// }

// class PDFViewer extends StatelessWidget {
//   final String path;

//   const PDFViewer({Key? key, required this.path}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return PDFView(
//       filePath: path,
//       enableSwipe: true,
//       swipeHorizontal: true,
//       autoSpacing: false,
//       pageFling: true,
//       pageSnap: true,
//       fitPolicy: FitPolicy.BOTH,
//       preventLinkNavigation: false,
//       onError: (error) {
//         print('PDFView error: $error');
//       },
//       onPageError: (page, error) {
//         print('PDFView page $page error: $error');
//       },
//       onViewCreated: (PDFViewController pdfViewController) {
//         // You can use the controller here if needed
//       },
//       onLinkHandler: (String? uri) {
//         print('PDFView goto uri: $uri');
//       },
//       onPageChanged: (int? page, int? total) {
//         print('PDFView page change: $page/$total');
//       },
//     );
//   }
// }
// ************************************************************
// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';
// import 'package:path_provider/path_provider.dart';

// class ResumeScreen extends StatefulWidget {
//   const ResumeScreen({Key? key}) : super(key: key);

//   @override
//   ResumeScreenState createState() => ResumeScreenState();
// }

// class ResumeScreenState extends State<ResumeScreen> {
//   String _resumePath = "";

//   @override
//   void initState() {
//     super.initState();
//     loadResumePdf();
//   }

//   Future<void> loadResumePdf() async {
//     try {
//       final resumeFile = await fromAsset('assets/resume.pdf', 'resume.pdf');
//       setState(() {
//         _resumePath = resumeFile.path;
//       });
//     } catch (e) {
//       stdout.write("Error loading resume PDF: $e");
//     }
//   }

//   Future<File> fromAsset(String asset, String filename) async {
//     try {
//       final dir = await getApplicationDocumentsDirectory();
//       final file = File("${dir.path}/$filename");
//       final data = await rootBundle.load(asset);
//       final bytes = data.buffer.asUint8List();
//       await file.writeAsBytes(bytes, flush: true);
//       return file;
//     } catch (e) {
//       throw Exception('Error parsing asset file: $e');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter PDF View',
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Resume PDF'),
//           actions: [
//             IconButton(
//               icon: const Icon(Icons.share),
//               onPressed: () {
//                 if (_resumePath.isNotEmpty) {
//                   // Share.shareFiles([_resumePath]);
//                 }
//               },
//             ),
//             IconButton(
//               icon: const Icon(Icons.download),
//               onPressed: () {
//                 // You can implement the download functionality here if needed
//               },
//             ),
//           ],
//         ),
//         body: Center(
//           child: _resumePath.isEmpty
//               ? const CircularProgressIndicator()
//               : Container(
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       color: Colors.black,
//                       width: 1.0,
//                     ),
//                   ),
//                   child: PDFViewer(path: _resumePath),
//                 ),
//         ),
//       ),
//     );
//   }
// }

// class PDFViewer extends StatelessWidget {
//   final String path;

//   const PDFViewer({Key? key, required this.path}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return PDFView(
//       filePath: path,
//       enableSwipe: true,
//       swipeHorizontal: true,
//       autoSpacing: false,
//       pageFling: true,
//       pageSnap: true,
//       fitPolicy: FitPolicy.BOTH,
//       preventLinkNavigation: false,
//       onError: (error) {
//         stdout.write('PDFView error: $error');
//       },
//       onPageError: (page, error) {
//         stdout.write('PDFView page $page error: $error');
//       },
//       onViewCreated: (PDFViewController pdfViewController) {
//         // You can use the controller here if needed
//       },
//       onLinkHandler: (String? uri) {
//         stdout.write('PDFView goto uri: $uri');
//       },
//       onPageChanged: (int? page, int? total) {
//         stdout.write('PDFView page change: $page/$total');
//       },
//     );
//   }
// }
