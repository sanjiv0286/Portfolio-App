// import 'package:flutter/material.dart';

// class EducationScreen extends StatelessWidget {
//   const EducationScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // return const Center(
//     //   child: Text('Education Screen Content', style: TextStyle(fontSize: 24)),
//     // );
//     return const Scaffold(
//       // appBar: AppBar(
//       //   title: const Center(child: Text('Education')),
//       // ),
//       body: Center(
//         child: Text(
//           "che che",
//         ),
//       ),
//     );
//   }
// }
// **************************************************************************
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Education {
  final String degree;
  final String institution;
  final String description;
  final DateTime startDate;
  final DateTime endDate;

  Education({
    required this.degree,
    required this.institution,
    required this.description,
    required this.startDate,
    required this.endDate,
  });
}

class EducationScreen extends StatelessWidget {
  EducationScreen({Key? key}) : super(key: key);

  // final List<Education> _educations = [
  //   Education(
  //     degree: 'Bachelor of Science in Computer Science',
  //     institution: 'Tech University',
  //     description: 'Focused on software engineering and data structures.',
  //     startDate: DateTime(2016, 9, 1),
  //     endDate: DateTime(2020, 6, 30),
  //   ),
  //   Education(
  //     degree: 'Master of Science in Software Engineering',
  //     institution: 'Innovative University',
  //     description: 'Specialized in scalable software architectures.',
  //     startDate: DateTime(2021, 9, 1),
  //     endDate: DateTime(2023, 6, 30),
  //   ),
  //   // Add more education entries as needed
  // ];

  final List<Education> _educations = [
    Education(
      degree:
          'Bachelor of Technology in Electronics and Communication Engineering',
      institution: 'PQR University',
      description: 'Specialized in Electronics and Communication Engineering.',
      startDate: DateTime(2021, 12, 12), // Add actual dates
      endDate: DateTime(2025, 8, 30), // Add actual dates
    ),
    Education(
      degree: '12th Standard',
      institution: 'ABC College',
      description: 'Scored 90% in 12th standard board examinations.',
      startDate: DateTime(2018, 5, 1), // Add actual dates
      endDate: DateTime(2019, 3, 30),
    ),
    Education(
      degree: '10th Standard',
      institution: 'XYZ School',
      description: 'Scored 95% in 10th standard board examinations.',
      startDate: DateTime(2016, 6, 1), // Add actual dates
      endDate: DateTime(2017, 3, 30),
    ),
    // Add more education entries as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      // backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'My Education',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: _educations.length,
          itemBuilder: (context, index) {
            final education = _educations[index];
            return TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.1,
              isFirst: index == 0,
              isLast: index == _educations.length - 1,
              indicatorStyle: const IndicatorStyle(
                width: 20,
                color: Colors.blue,
                padding: EdgeInsets.all(6),
                indicator: Icon(Icons.circle, color: Colors.blue),
              ),
              beforeLineStyle: const LineStyle(
                color: Colors.blue,
                thickness: 2,
              ),
              endChild: Padding(
                padding: const EdgeInsets.all(8.0),
                child: _EducationCard(education: education),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _EducationCard extends StatelessWidget {
  final Education education;

  const _EducationCard({Key? key, required this.education}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              education.degree,
              style:
                  const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4.0),
            Text(
              education.institution,
              style:
                  const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 4.0),
            Text(
              '${education.startDate.year} - ${education.endDate.year}',
              style: const TextStyle(fontSize: 12.0, color: Colors.grey),
            ),
            const SizedBox(height: 8.0),
            Text(
              education.description,
              style: const TextStyle(fontSize: 12.0),
            ),
          ],
        ),
      ),
    );
  }
}

// **************************************************************************
// import 'package:flutter/material.dart';

// import 'package:timeline_tile/timeline_tile.dart';

// class Experience {
//   final String title;
//   final String company;
//   final String description;
//   final DateTime startDate;
//   final DateTime endDate;

//   Experience({
//     required this.title,
//     required this.company,
//     required this.description,
//     required this.startDate,
//     required this.endDate,
//   });
// }

// class EducationScreen extends StatelessWidget {
//   const EducationScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Experience Showcase',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: ExperienceListScreen(),
//     );
//   }
// }

// class ExperienceListScreen extends StatelessWidget {
//   ExperienceListScreen({super.key});

//   final List<Experience> _experiences = [
//     Experience(
//       title: 'Software Engineer',
//       company: 'Tech Solutions',
//       description: 'Developed various mobile applications using Flutter.',
//       startDate: DateTime(2020, 1, 1),
//       endDate: DateTime(2022, 12, 31),
//     ),
//     Experience(
//       title: 'Senior Developer',
//       company: 'Innovative Apps',
//       description: 'Led a team of developers to build scalable applications.',
//       startDate: DateTime(2018, 6, 1),
//       endDate: DateTime(2019, 12, 31),
//     ),
//     Experience(
//       title: 'Senior Developer',
//       company: 'Innovative Apps',
//       description: 'Led a team of developers to build scalable applications.',
//       startDate: DateTime(2018, 6, 1),
//       endDate: DateTime(2019, 12, 31),
//     ),
//     // Add more experiences as needed
//   ];




//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).colorScheme.background,
//       appBar: AppBar(
//         title: const Text('My Experiences'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: ListView.builder(
//           itemCount: _experiences.length,
//           itemBuilder: (context, index) {
//             final experience = _experiences[index];
//             return TimelineTile(
//               alignment: TimelineAlign.manual,
//               lineXY: 0.1,
//               isFirst: index == 0,
//               isLast: index == _experiences.length - 1,
//               indicatorStyle: const IndicatorStyle(
//                 width: 20,
//                 color: Colors.blue,
//                 padding: EdgeInsets.all(6),
//                 indicator: Icon(Icons.circle, color: Colors.blue),
//               ),
//               beforeLineStyle: const LineStyle(
//                 color: Colors.blue,
//                 thickness: 2,
//               ),
//               endChild: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: _ExperienceCard(experience: experience),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class _ExperienceCard extends StatelessWidget {
//   final Experience experience;

//   const _ExperienceCard({Key? key, required this.experience}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 4.0,
//       margin: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               experience.title,
//               style:
//                   const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 4.0),
//             Text(
//               experience.company,
//               style:
//                   const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),
//             ),
//             const SizedBox(height: 4.0),
//             Text(
//               '${experience.startDate.year} - ${experience.endDate.year}',
//               style: const TextStyle(fontSize: 12.0, color: Colors.grey),
//             ),
//             const SizedBox(height: 8.0),
//             Text(
//               experience.description,
//               style: const TextStyle(fontSize: 12.0),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// // ****************************************************************************
