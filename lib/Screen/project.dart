// import 'package:flutter/material.dart';

// class ProjectScreen extends StatelessWidget {
//   const ProjectScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Project Screen Content', style: TextStyle(fontSize: 24)),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({Key? key}) : super(key: key);

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  projetCard(lang, title, description, star) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 220,
      child: Card(
        color: const Color(0xff262628),
        child: Container(
          margin: const EdgeInsets.only(left: 20, top: 30, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lang,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                description,
                style: const TextStyle(color: Colors.white70, fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.white70,
                    size: 18,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    star,
                    style: const TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  Expanded(child: Container()),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff1e1e1e),
      // backgroundColor: Colors.black,
      appBar: AppBar(
        // backgroundColor: const Color(0xff252525),
        title: const Text(
          'My Projects',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(bottom: 20, top: 10),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              projetCard(
                  'FLUTTER', 'Click 2 Code', 'An online code compiler', '10'),
              projetCard('JAVA', 'Dot Epid', 'App for Covid 19', '9'),
              projetCard('PYTHON', 'Face Detection',
                  'Attendance using face detection.', '8'),
              projetCard('C++', 'Chess', 'Multiplayer chess engine.', '7'),
              projetCard(
                  'FLUTTER', 'Click 2 Code', 'An online code compiler', '10')
            ],
          ),
        ),
      ),
    );
  }
}
