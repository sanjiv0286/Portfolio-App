// import 'dart:io';
// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';

// class ResumeScreen extends StatelessWidget {
//   const ResumeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Resume Screen Content', style: TextStyle(fontSize: 24)),
//     );
//   }
// }
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

// void main() => runApp(const ResumeScreen());

class ResumeScreen extends StatefulWidget {
  const ResumeScreen({Key? key}) : super(key: key);

  @override
  ResumeScreenState createState() => ResumeScreenState();
}

class ResumeScreenState extends State<ResumeScreen> {
  String _resumePath = "";

  @override
  void initState() {
    super.initState();
    loadResumePdf();
  }

  Color _getBackgroundColor(BuildContext context) {
    if (Theme.of(context).brightness == Brightness.light) {
      return const Color.fromARGB(255, 246, 246, 249);
    } else {
      // Return a different color for dark theme if needed
      return const Color(0xff262628);
    }
  }

  Future<void> loadResumePdf() async {
    try {
      final resumeFile = await fromAsset('assets/resume.pdf', 'resume.pdf');
      setState(() {
        _resumePath = resumeFile.path;
      });
    } catch (e) {
      stdout.write("Error loading resume PDF: $e");
    }
  }

  Future<File> fromAsset(String asset, String filename) async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      final file = File("${dir.path}/$filename");
      final data = await rootBundle.load(asset);
      final bytes = data.buffer.asUint8List();
      await file.writeAsBytes(bytes, flush: true);
      return file;
    } catch (e) {
      throw Exception('Error parsing asset file: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter PDF View',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: _getBackgroundColor(context),
        // if(themeData.light()==true){
        // backgroundColor: const Color(0xff262628),

        // }
        // else{
        // backgroundColor: const Color(0xff262628),

        // }

        appBar: AppBar(
          // backgroundColor: Colors.black87,
          // backgroundColor: const Color(0xff262628),

          title: const Text(
            'Resume PDF',
            // style: TextStyle(color: Colors.white70),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.share),
              onPressed: () {
                if (_resumePath.isNotEmpty) {
                  // sharePdfFile();
                }
              },
            ),
            IconButton(
              icon: const Icon(Icons.download),
              onPressed: () {
                // You can implement the download functionality here if needed
              },
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _resumePath.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : Expanded(
                    flex: 8,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                      child: PDFViewer(path: _resumePath),
                    ),
                  ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 255, 255, 255),
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        launch(
                          'https://drive.google.com/file/d/1h2IhiR2B9XzpfIRlpRPx8ET4ljGVNdpk/view?usp=sharing',
                          forceWebView: false,
                        );
                      },
                      child: const Text("Open file")),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PDFViewer extends StatelessWidget {
  final String path;

  const PDFViewer({Key? key, required this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PDFView(
      filePath: path,
      enableSwipe: true,
      nightMode: false,
      swipeHorizontal: true,
      autoSpacing: false,
      pageFling: true,
      pageSnap: true,
      fitPolicy: FitPolicy.BOTH,
      preventLinkNavigation: false,
      onError: (error) {
        stdout.write('PDFView error: $error');
      },
      onPageError: (page, error) {
        stdout.write('PDFView page $page error: $error');
      },
      onViewCreated: (PDFViewController pdfViewController) {
        // You can use the controller here if needed
      },
      onLinkHandler: (String? uri) {
        stdout.write('PDFView goto uri: $uri');
      },
      onPageChanged: (int? page, int? total) {
        stdout.write('PDFView page change: $page/$total');
      },
    );
  }
}
