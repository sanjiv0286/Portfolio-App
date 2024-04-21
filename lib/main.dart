// ***********************************************************************
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portfolio/Screen/about.dart';
import 'package:portfolio/Screen/contact.dart';
import 'package:portfolio/Screen/tech.dart';
import 'package:portfolio/Screen/usefullink.dart';
import 'Screen/certificate.dart';
import 'Screen/cp.dart';
import 'Screen/education.dart';
import 'Screen/home.dart';
import 'Screen/project.dart';
import 'Screen/resume.dart';

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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // localizationsDelegates: const [
      //   DefaultMaterialLocalizations.delegate,
      //   DefaultWidgetsLocalizations.delegate,
      // ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // builder: (context, widget) {
      //   return MediaQuery(
      //     data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
      //     child: widget!,
      //   );
      // },
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

// SingleTickerProviderStateMixin is a mixin class provided by Flutter that is used to provide a single ticker for animations. It's commonly used with animation controllers to drive animations within a stateful widget.
class MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  // int _selectedIndex = 0;
  late TabController _tabController;
  final List<Widget> _screens = [
    const HomeScreen(),
    const EducationScreen(),
    const ResumeScreen(),
    const CpProfileScreen(),
    const ProjectScreen(),
    const TechnicalSkillsScreen(),
    const CertificateScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _screens.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _screens.length,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Scaffold(
            appBar: AppBar(
              // title: Text(_getScreenTitle(_selectedIndex)),
              title: const Text("Portfolio App"),
              bottom: TabBar(
                tabs: _getBottomNavItems(),
                controller: _tabController,
                // isScrollable: true,
                isScrollable:
                    constraints.maxWidth < 600, // Adjust based on screen width
                // indicatorPadding: EdgeInsets.zero,
              ),
            ),
            // ***************************** Drawer*****************************************
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const UserAccountsDrawerHeader(
                    accountName: Text(
                      "Sanjiv Kushwaha",
                      style: TextStyle(),
                    ),
                    accountEmail: Text("sanjiv21101@iiitnr.edu.in"),
                    decoration: BoxDecoration(
                      color: Colors.blue, // Change background color as desired
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://i.pinimg.com/474x/29/da/1a/29da1a4c7406dde2a6be507453399dc8.jpg',
                          // 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3vPXSyRYjPwJhJGGWBb52VzBMqOCbFLEcFA&usqp=CAU',
                          // 'https://images.pexels.com/photos/531880/pexels-photo-531880.jpeg?auto=compress&cs=tinysrgb&w=600',
                        ), // Replace with your network image URL
                        fit: BoxFit.cover,
                      ),
                    ),
                    // *******************
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/sanjiv-1.jpg',
                      ),
                      // **************
                      // child: ClipOval(
                      //   child: Image.asset(
                      //     'assets/images/sanjiv-1.jpg',
                      //     fit: BoxFit.fill,
                      //   ),
                      //   // child: Image.network(
                      //   //   // 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9A5EnB-blCGhekD8xzY6HbwxtbLBbhWzgPzahkqPEqFJyXHOba-k2KjiX8Kb_dkVZHl4&usqp=CAU',
                      //   //   // 'https://static.vecteezy.com/system/resources/previews/004/477/343/non_2x/face-young-man-in-frame-circular-avatar-character-icon-free-vector.jpg',
                      //   //   // 'https://static.vecteezy.com/system/resources/previews/002/002/403/non_2x/man-with-beard-avatar-character-isolated-icon-free-vector.jpg',
                      //   //   // 'https://static.vecteezy.com/system/resources/previews/001/912/631/non_2x/beautiful-woman-in-frame-circular-avatar-character-free-vector.jpg',
                      //   // ),
                      // ),
                    ),
                    // **************
                  ),
                  // for (int i = 0; i < 8; i++)
                  //   ListTile(
                  //     title: Text(_getScreenTitle(i)),
                  //     onTap: () {
                  // _onNavItemTapped(i);
                  // Navigator.pop(context);
                  //     },
                  //   ),
                  ListTile(
                    leading: const Icon(
                      Icons.home,
                      color: Color.fromARGB(255, 4, 12, 232),
                    ),
                    title: const Text(
                      'Home',
                      // style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      const HomeScreen();
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.person_2,
                      color: Colors.deepPurple,
                    ),
                    title: const Text(
                      'About Me',

                      // style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      // const AboutMeScreen();
                      // Get.to(const AboutMeScreen());
                      Get.to(() => const AboutMeScreen());
                    },
                  ),
                  ListTile(
                    leading: const FaIcon(
                      FontAwesomeIcons.sheetPlastic,
                      color: Colors.green,
                    ),
                    title: const Text(
                      'Resume',
                      // style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                    onTap: () {
                      _tabController.animateTo(2);
                      Navigator.pop(context);
                      // Navigator.pop(context);
                      // const HomeScreen();
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.work,
                      color: Colors.orange,
                    ),
                    title: const Text(
                      'Projects',
                      // style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                    onTap: () {
                      _tabController.animateTo(4);
                      Navigator.pop(context);
                      // const HomeScreen();
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.contact_page,
                      color: Colors.teal,
                    ),
                    title: const Text(
                      'Contact Me',
                      // style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      // const ContactScreen();
                      Get.to(() => const ContactScreen());
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.link,
                      color: Colors.blue,
                    ),
                    title: const Text(
                      'Useful Links',
                      // style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      Get.to(() => const UsefulLink());
                    },
                  ),
                ],
              ),
            ),
            // *******************************Body ****************************************
            body: TabBarView(
              controller: _tabController,
              children: _screens,
            ),
          );
        },
      ),
    );
  }

  // void _onNavItemTapped(int index) {
  //   setState(() {
  //     // _selectedIndex = index;
  //   });
  //   _tabController.animateTo(index);
  // }

  List<Tab> _getBottomNavItems() {
    return List.generate(
      _screens.length,
      (index) => Tab(
        text: _getScreenTitle(index),
      ),
    );
  }

  String _getScreenTitle(int index) {
    switch (index) {
      case 0:
        return 'Home';
      case 1:
        return 'Education';
      case 2:
        return 'Resume';
      case 3:
        return 'CP Profile';
      case 4:
        return 'Projects';
      case 5:
        return 'Technical Skill';
      case 6:
        return 'Certificate';
      default:
        return '';
    }
  }
}

// ************************************************************************
// ****************************************************************************
