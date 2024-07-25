import 'package:flutter/material.dart';

class TechnicalSkillsScreen extends StatefulWidget {
  const TechnicalSkillsScreen({super.key});

  @override
  State<TechnicalSkillsScreen> createState() => _TechnicalSkillsScreenState();
}

class _TechnicalSkillsScreenState extends State<TechnicalSkillsScreen> {
  final List<String> skills = [
    'C/C++',
    'HTML/CSS',
    'Javascript',
    'Java',
    'Data Structure',
    'Algorithms',
    'Programming',
    'Problem Solving',
    'Git',
    'Web Development',
    'Mobile App Development',
    'Dart',
    'Flutter',
    'Firebase',
    'Responsive Design',
    'API(Application programming Interface)',
    'Rest API',
    'Object Oriented Programming',
    'Team Work',
    'Good Communication',
    'SQL(Structured Query Language)',
    'Operating System(OS)',
    'Database Management System(DBMS)',
    'Computer Network',
    // 'Basics Of Low Level Design'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Technical Skills',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: skills.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  skills[index],
                  style: const TextStyle(fontSize: 18.0),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
