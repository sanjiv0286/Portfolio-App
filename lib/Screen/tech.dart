import 'package:flutter/material.dart';

class TechnicalSkillsScreen extends StatefulWidget {
  const TechnicalSkillsScreen({super.key});

  @override
  State<TechnicalSkillsScreen> createState() => _TechnicalSkillsScreenState();
}

class _TechnicalSkillsScreenState extends State<TechnicalSkillsScreen> {
  final List<String> skills = [
    'Flutter',
    'Dart',
    'UI/UX Design',
    'Firebase',
    'JavaScript',
    'React Native',
    'Node.js',
    'SQL',
    'Git',
    'Python',
    'HTML/CSS',
    'Mobile App Development',
    'Responsive Design',
    'Problem Solving',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Skills',
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
