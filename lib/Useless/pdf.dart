// ***********************************************************************

// // ignore_for_file: avoid_print

// import 'dart:async';
// import 'dart:io';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';
// import 'package:path_provider/path_provider.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyHomeScreen(),
//     );
//   }
// }

// class MyHomeScreen extends StatefulWidget {
//   const MyHomeScreen({Key? key}) : super(key: key);

//   @override
//   // ignore: library_private_types_in_public_api
//   _MyHomeScreenState createState() => _MyHomeScreenState();
// }

// class _MyHomeScreenState extends State<MyHomeScreen> {
//   String pathPDF = "";
//   String remotePathPDF = "";

//   @override
//   void initState() {
//     super.initState();
//     fromAsset('assets/resume.pdf', 'resume.pdf').then((f) {
//       setState(() {
//         pathPDF = f.path;
//       });
//     });

//     createFileOfPdfUrl().then((f) {
//       setState(() {
//         remotePathPDF = f.path;
//       });
//     });
//   }

//   Future<File> fromAsset(String asset, String filename) async {
//     try {
//       var dir = await getApplicationDocumentsDirectory();
//       File file = File("${dir.path}/$filename");
//       var data = await rootBundle.load(asset);
//       var bytes = data.buffer.asUint8List();
//       await file.writeAsBytes(bytes, flush: true);
//       return file;
//     } catch (e) {
//       throw Exception('Error parsing asset pdf file!');
//     }
//   }

//   Future<File> createFileOfPdfUrl() async {
//     try {
//       const url = "https://icseindia.org/document/sample.pdf";
//       final fileName = url.substring(url.lastIndexOf("/") + 1);
//       var request = await HttpClient().getUrl(Uri.parse(url));
//       var response = await request.close();
//       var bytes = await consolidateHttpClientResponseBytes(response);
//       var dir = await getApplicationDocumentsDirectory();
//       File file = File("${dir.path}/$fileName");

//       await file.writeAsBytes(bytes, flush: true);
//       return file;
//     } catch (e) {
//       throw Exception('Error downloading pdf file!');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const SizedBox(
//               height: 15,
//             ),
//             ElevatedButton(
//               child: const Text("Simple PDF", style: TextStyle(fontSize: 22)),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => PDFViewScreen(path: pathPDF)),
//                 );
//               },
//             ),
//             const SizedBox(
//               height: 15,
//             ),
//             ElevatedButton(
//               child: const Text("Remote PDF", style: TextStyle(fontSize: 22)),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => PDFViewScreen(path: remotePathPDF)),
//                 );
//               },
//             ),
//             const SizedBox(
//               height: 15,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class PDFViewScreen extends StatefulWidget {
//   final String path;

//   const PDFViewScreen({required this.path, Key? key}) : super(key: key);

//   @override
//   // ignore: library_private_types_in_public_api
//   _PDFViewScreenState createState() => _PDFViewScreenState();
// }

// class _PDFViewScreenState extends State<PDFViewScreen> {
//   final Completer<PDFViewController> _controller =
//       Completer<PDFViewController>();
//   int pages = 0;
//   int currentPage = 0;
//   bool isReady = false;
//   String errorMessage = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           decoration: BoxDecoration(
//             border: Border.all(
//               color: const Color.fromRGBO(
//                   0, 0, 0, 1), // You can specify the color of the border here
//               width: 2.0, // You can adjust the width of the border here
//             ),
//           ),
//           child: PDFView(
//             filePath: widget.path,
//             enableSwipe: true,
//             swipeHorizontal: true,
//             autoSpacing: false,
//             pageFling: false,
//             onRender: (pages) {
//               setState(() {
//                 pages = pages!;
//                 isReady = true;
//               });
//             },
//             onError: (error) {
//               print(error.toString());
//             },
//             onPageError: (page, error) {
//               print('$page: ${error.toString()}');
//             },
//             onViewCreated: (PDFViewController pdfViewController) {
//               _controller.complete(pdfViewController);
//             },
//             onPageChanged: (int? page, int? total) {
//               print('page change: $page/$total');
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
// *******************************************************************


// // ignore_for_file: avoid_print

// import 'dart:async';
// import 'dart:io';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';
// import 'package:path_provider/path_provider.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyHomeScreen(),
//     );
//   }
// }

// class MyHomeScreen extends StatefulWidget {
//   const MyHomeScreen({Key? key}) : super(key: key);

//   @override
//   // ignore: library_private_types_in_public_api
//   _MyHomeScreenState createState() => _MyHomeScreenState();
// }

// class _MyHomeScreenState extends State<MyHomeScreen> {
//   String pathPDF = '';
//   String remotePathPDF = '';

//   @override
//   void initState() {
//     super.initState();
//     _loadLocalPdf();
//     _loadRemotePdf();
//   }

//   Future<void> _loadLocalPdf() async {
//     final file = await _fromAsset('assets/resume.pdf', 'resume.pdf');
//     setState(() {
//       pathPDF = file.path;
//     });
//   }

//   Future<void> _loadRemotePdf() async {
//     try {
//       final file = await _createFileOfPdfUrl("https://icseindia.org/document/sample.pdf");
//       setState(() {
//         remotePathPDF = file.path;
//       });
//     } catch (e) {
//       print('Error downloading pdf file: $e');
//     }
//   }

//   Future<File> _fromAsset(String asset, String filename) async {
//     final dir = await getApplicationDocumentsDirectory();
//     final file = File('${dir.path}/$filename');
//     final data = await rootBundle.load(asset);
//     final bytes = data.buffer.asUint8List();
//     await file.writeAsBytes(bytes, flush: true);
//     return file;
//   }

//   Future<File> _createFileOfPdfUrl(String url) async {
//     final fileName = url.substring(url.lastIndexOf('/') + 1);
//     final request = await HttpClient().getUrl(Uri.parse(url));
//     final response = await request.close();
//     final bytes = await consolidateHttpClientResponseBytes(response);
//     final dir = await getApplicationDocumentsDirectory();
//     final file = File('${dir.path}/$fileName');
//     await file.writeAsBytes(bytes, flush: true);
//     return file;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('PDF Viewer'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => PDFViewScreen(path: pathPDF)),
//                 );
//               },
//               child: const Text('Local PDF'),
//             ),
//             const SizedBox(height: 15),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => PDFViewScreen(path: remotePathPDF)),
//                 );
//               },
//               child: const Text('Remote PDF'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class PDFViewScreen extends StatelessWidget {
//   final String path;

//   const PDFViewScreen({required this.path, Key? key}) : super(key: key);

// ignore_for_file: avoid_print

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('PDF Viewer'),
//       ),
//       body: PDFView(
//         filePath: path,
//         enableSwipe: true,
//         swipeHorizontal: true,
//         autoSpacing: false,
//         pageFling: false,
//         onRender: (pages) {
//           print('Pages: $pages');
//         },
//         onError: (error) {
//           print('Error: $error');
//         },
//         onPageError: (page, error) {
//           print('Page $page: $error');
//         },
//         onViewCreated: (PDFViewController pdfViewController) {
//           print('PDF View Controller: $pdfViewController');
//         },
//         onPageChanged: (page, total) {
//           print('Page changed: $page/$total');
//         },
//       ),
//     );
//   }
// }
// *********************************************************************************
// import 'dart:async';
// import 'dart:io';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';
// import 'package:path_provider/path_provider.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyHomeScreen(),
//     );
//   }
// }

// class MyHomeScreen extends StatefulWidget {
//   const MyHomeScreen({Key? key}) : super(key: key);

//   @override
//   // ignore: library_private_types_in_public_api
//   _MyHomeScreenState createState() => _MyHomeScreenState();
// }

// class _MyHomeScreenState extends State<MyHomeScreen> {
//   String pathPDF = '';
//   String remotePathPDF = '';

//   @override
//   void initState() {
//     super.initState();
//     _loadLocalPdf();
//     _loadRemotePdf();
//   }

//   Future<void> _loadLocalPdf() async {
//     final file = await _fromAsset('assets/resume.pdf', 'resume.pdf');
//     setState(() {
//       pathPDF = file.path;
//     });
//   }

//   Future<void> _loadRemotePdf() async {
//     try {
//       final file = await _createFileOfPdfUrl(
//           "https://icseindia.org/document/sample.pdf");
//       setState(() {
//         remotePathPDF = file.path;
//       });
//     } catch (e) {
//       print('Error downloading pdf file: $e');
//     }
//   }

//   Future<File> _fromAsset(String asset, String filename) async {
//     final dir = await getApplicationDocumentsDirectory();
//     final file = File('${dir.path}/$filename');
//     final data = await rootBundle.load(asset);
//     final bytes = data.buffer.asUint8List();
//     await file.writeAsBytes(bytes, flush: true);
//     return file;
//   }

//   Future<File> _createFileOfPdfUrl(String url) async {
//     final fileName = url.substring(url.lastIndexOf('/') + 1);
//     final request = await HttpClient().getUrl(Uri.parse(url));
//     final response = await request.close();
//     final bytes = await consolidateHttpClientResponseBytes(response);
//     final dir = await getApplicationDocumentsDirectory();
//     final file = File('${dir.path}/$fileName');
//     await file.writeAsBytes(bytes, flush: true);
//     return file;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('PDF Viewer'),
//       ),
//       body: Container(
//         color: Colors.lightBlueAccent, // Background color
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => PDFViewScreen(path: pathPDF)),
//                   );
//                 },
//                 style: ElevatedButton.styleFrom(
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
//                   textStyle: const TextStyle(fontSize: 18),
//                 ),
//                 child: const Text('View Local Resume'),
//               ),
//               const SizedBox(height: 15),
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) =>
//                             PDFViewScreen(path: remotePathPDF, isRemote: true)),
//                   );
//                 },
//                 style: ElevatedButton.styleFrom(
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
//                   textStyle: const TextStyle(fontSize: 18),
//                 ),
//                 child: const Text('View Remote Resume'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class PDFViewScreen extends StatelessWidget {
//   final String path;
//   final bool isRemote;

//   const PDFViewScreen({required this.path, this.isRemote = false, Key? key})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Resume'),
//       ),
//       body: Stack(
//         children: [
//           Container(
//             color: Colors.lightBlueAccent, // Background color
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: isRemote
//                 ? SingleChildScrollView(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         _buildPDFView(),
//                         const SizedBox(height: 20),
//                         const Text(
//                           'Scroll horizontally to view the entire PDF',
//                           style: TextStyle(fontSize: 16),
//                         ),
//                       ],
//                     ),
//                   )
//                 : _buildPDFView(),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildPDFView() {
//     return SizedBox(
//       // height: MediaQuery.of(context as BuildContext).size.height *
//       //     0.7, // Adjust height as needed
//       height: 500,
//       child: PDFView(
//         filePath: path,
//         enableSwipe: true,
//         swipeHorizontal: true,
//         autoSpacing: false,
//         pageFling: false,
//         onError: (error) {
//           print('Error: $error');
//         },
//         onPageError: (page, error) {
//           print('Page $page: $error');
//         },
//         onViewCreated: (PDFViewController pdfViewController) {
//           print('PDF View Controller: $pdfViewController');
//         },
//         onPageChanged: (page, total) {
//           print('Page changed: $page/$total');
//         },
//       ),
//     );
//   }
// }
