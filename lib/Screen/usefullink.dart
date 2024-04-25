// // ignore_for_file: deprecated_member_use

// // import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// // import 'package:flutter/widgets.dart';

// // class UsefulLink extends StatelessWidget {
// //   const UsefulLink({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// // appBar: AppBar(
// //   // leading:
// //   //     IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
// //   // backgroundColor: Colors.blue,
// //   title: const Text('Useful Links'),
// // ),
// //       body: const Center(
// //         child:
// //             Text('Useful Links Screen Content', style: TextStyle(fontSize: 24)),
// //       ),
// //     );
// //   }
// // }
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
import 'package:flutter/material.dart';

class UsefulLink extends StatelessWidget {
  const UsefulLink({super.key});

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
