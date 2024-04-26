// import 'package:flutter/material.dart';

// class CertificateScreen extends StatelessWidget {
//   const CertificateScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Certificate Screen Content', style: TextStyle(fontSize: 24)),
//     );
//   }
// }
import 'package:flutter/material.dart';

class CertificateScreen extends StatelessWidget {
  const CertificateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Certificates'),
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
                  _buildRow(context, constraints),
                  _buildRow(context, constraints),
                  _buildRow(context, constraints),
                  _buildRow(context, constraints),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildRow(BuildContext context, BoxConstraints constraints) {
    final itemWidth = constraints.maxWidth * 0.45;
    final itemHeight = MediaQuery.of(context).size.height * 0.20;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          _buildContainer(Colors.amberAccent, itemWidth, itemHeight),
          _buildContainer(Colors.blueGrey, itemWidth, itemHeight),
        ],
      ),
    );
  }

  Widget _buildContainer(Color color, double width, double height) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color,
          ),
          height: height,
          width: width,
        ),
      ),
    );
  }
}
