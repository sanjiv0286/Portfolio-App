import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portfolio/Screen/about.dart';
import 'package:portfolio/Screen/certificate.dart';
import 'package:portfolio/Screen/contact.dart';
import 'package:portfolio/Screen/cp.dart';
import 'package:portfolio/Screen/education.dart';
import 'package:portfolio/Screen/home.dart';
import 'package:portfolio/Screen/project.dart';
import 'package:portfolio/Screen/resume.dart';
import 'package:portfolio/Screen/tech.dart';
import 'package:portfolio/Screen/usefullink.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

// SingleTickerProviderStateMixin is a mixin class provided by Flutter that is used to provide a single ticker for animations. It's commonly used with animation controllers to drive animations within a stateful widget.
class MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  var isDarkMode = false;
  late TabController _tabController;
  final List<Widget> _screens = [
    const HomeScreen(),
    EducationScreen(),
    const ResumeScreen(),
    const CpProfileScreen(),
    const ProjectScreen(),
    const TechnicalSkillsScreen(),
    const CertificateScreen(),
  ];

// *********************************
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
              systemOverlayStyle: Get.isDarkMode
                  ? SystemUiOverlayStyle.light
                  : SystemUiOverlayStyle.dark,
              // title: Text(_getScreenTitle(_selectedIndex)),
              title: const Text("Portfolio App"),
              actions: [
                IconButton(
                  onPressed: () {
                    Get.changeTheme(
                      Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
                    );
                    setState(() {
                      // Toggle the isDarkMode variable
                      isDarkMode = !isDarkMode;
                    });
                  },
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      // Get.isDarkMode ? Icons.dark_mode : Icons.light_mode,
                      isDarkMode ? Icons.light_mode : Icons.dark_mode,
                    ),
                  ),
                ),
              ],
              bottom: TabBar(
                tabs: _getBottomNavItems(),
                controller: _tabController,
                // isScrollable: true,
                isScrollable:
                    constraints.maxWidth < 835, // Adjust based on screen width
                // *Add slide transition animation
                // indicator: BoxDecoration(
                //   border: Border(
                //     bottom: BorderSide(
                //       color: Theme.of(context).colorScheme.secondary,
                //       width: 3.0,
                //     ),
                //   ),
                // ),
                // *Add slide transition animation
                indicatorPadding: EdgeInsets.zero,
                indicatorWeight: 2.0,
                indicatorSize: TabBarIndicatorSize.label,
                labelPadding: const EdgeInsets.symmetric(horizontal: 12.0),
                labelColor: Theme.of(context).colorScheme.secondary,
                unselectedLabelColor: Colors.grey,
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
                          // 'https://i.pinimg.com/474x/29/da/1a/29da1a4c7406dde2a6be507453399dc8.jpg',
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3vPXSyRYjPwJhJGGWBb52VzBMqOCbFLEcFA&usqp=CAU',
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
                  // *************************************
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
                      // Navigator.pop(context);
                      Get.back();
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
                      // Navigator.pop(context);
                      Get.back();
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
                      Get.back();
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
                      Get.back();
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
                      Get.back();
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
                      Get.back();
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
  // Helper method to create animation for each tab
}

// ******************************************************************
