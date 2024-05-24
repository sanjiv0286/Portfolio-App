// ****************** Tab Bar good for Lage Screen , Drawer Button Not work *************************************************
// ***********************************************************************************************

// import 'package:device_preview/device_preview.dart';
// import 'package:flutter/material.dart';

// void main() async {
//   runApp(
//     DevicePreview(
//       enabled: true,
//       builder: (context) => const MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       localizationsDelegates: const [
//         DefaultMaterialLocalizations.delegate,
//         DefaultWidgetsLocalizations.delegate,
//       ],
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       builder: (context, widget) {
//         return MediaQuery(
//           data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
//           child: widget!,
//         );
//       },
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   // ignore: library_private_types_in_public_api
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _selectedIndex = 0;

//   final List<Widget> _screens = [
//     const HomeScreen(),
//     const AboutMeScreen(),
//     const ProjectScreen(),
//     const CpProfileScreen(),
//     const ContactScreen(),
//     const TechnicalSkillsScreen(),
//     const ResumeScreen(),
//     const EducationScreen(),
//     const CertificateScreen(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 9, // Number of tabs/screens
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text(_getScreenTitle(_selectedIndex)),
//           bottom: TabBar(
//             tabs: _getBottomNavItems(),
//             indicatorColor: Colors.white,
//             onTap: (index) {
//               _onNavItemTapped(index);
//             },
//           ),
//         ),
//         drawer: Drawer(
//           child: ListView(
//             padding: EdgeInsets.zero,
//             children: [
//               const UserAccountsDrawerHeader(
//                 accountName: Text("Sanjiv Kushwaha"),
//                 accountEmail: Text("sanjiv21101@iiitnr.edu.in"),
//                 currentAccountPicture: CircleAvatar(
//                   backgroundImage: AssetImage('assets/images/sk.png'),
//                 ),
//               ),
//               for (int i = 0; i < 9; i++)
//                 ListTile(
//                   title: Text(_getScreenTitle(i)),
//                   onTap: () {
//                     _onNavItemTapped(i);
//                     Navigator.pop(context);
//                   },
//                 ),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: _screens,
//         ),
//       ),
//     );
//   }

//   void _onNavItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   List<Tab> _getBottomNavItems() {
//     return List.generate(
//       _screens.length,
//       (index) => Tab(
//         text: _getScreenTitle(index),
//       ),
//     );
//   }

//   String _getScreenTitle(int index) {
//     switch (index) {
//       case 0:
//         return 'Home';
//       case 1:
//         return 'About Me';
//       case 2:
//         return 'Project';
//       case 3:
//         return 'CP Profile';
//       case 4:
//         return 'Contact';
//       case 5:
//         return 'Technical Skill';
//       case 6:
//         return 'Resume';
//       case 7:
//         return 'Education';
//       case 8:
//         return 'Certificate';
//       default:
//         return '';
//     }
//   }
// }

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Home Screen Content', style: TextStyle(fontSize: 24)),
//     );
//   }
// }

// class AboutMeScreen extends StatelessWidget {
//   const AboutMeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('About Me Screen Content', style: TextStyle(fontSize: 24)),
//     );
//   }
// }

// class ProjectScreen extends StatelessWidget {
//   const ProjectScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Project Screen Content', style: TextStyle(fontSize: 24)),
//     );
//   }
// }

// class CpProfileScreen extends StatelessWidget {
//   const CpProfileScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('CP Profile Screen Content', style: TextStyle(fontSize: 24)),
//     );
//   }
// }

// class ContactScreen extends StatelessWidget {
//   const ContactScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Contact Screen Content', style: TextStyle(fontSize: 24)),
//     );
//   }
// }

// class TechnicalSkillsScreen extends StatelessWidget {
//   const TechnicalSkillsScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Technical Skills Screen Content',
//           style: TextStyle(fontSize: 24)),
//     );
//   }
// }

// class ResumeScreen extends StatelessWidget {
//   const ResumeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Resume Screen Content', style: TextStyle(fontSize: 24)),
//     );
//   }
// }

// class EducationScreen extends StatelessWidget {
//   const EducationScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Education Screen Content', style: TextStyle(fontSize: 24)),
//     );
//   }
// }

// class CertificateScreen extends StatelessWidget {
//   const CertificateScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Certificate Screen Content', style: TextStyle(fontSize: 24)),
//     );
//   }
// }

// ****************** Tab Bar good for Lage Screen , Drawer Button  work *************************************************
// ****************************************************************************************************************************



// import 'package:device_preview/device_preview.dart';
// import 'package:flutter/material.dart';

// void main() async {
//   runApp(
//     DevicePreview(
//       enabled: true,
//       builder: (context) => const MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       localizationsDelegates: const [
//         DefaultMaterialLocalizations.delegate,
//         DefaultWidgetsLocalizations.delegate,
//       ],
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       builder: (context, widget) {
//         return MediaQuery(
//           data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
//           child: widget!,
//         );
//       },
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   // ignore: library_private_types_in_public_api
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//   int _selectedIndex = 0;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 9, vsync: this);
//     _tabController.addListener(() {
//       if (_tabController.indexIsChanging) {
//         _onNavItemTapped(_tabController.index);
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(_getScreenTitle(_selectedIndex)),
//         bottom: TabBar(
//           controller: _tabController,
//           tabs: _getBottomNavItems(),
//           indicatorWeight: 4.0, // Set indicator weight for better visibility
//           indicatorPadding: const EdgeInsets.symmetric(
//               horizontal: 16.0), // Set padding for the indicator
//           labelColor: Colors.white, // Set text color of the selected tab
//           unselectedLabelColor:
//               Colors.grey, // Set text color of unselected tabs
//           labelStyle:
//               const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//           unselectedLabelStyle: const TextStyle(fontSize: 14),
//           indicatorColor: Colors.black,
//         ),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             const UserAccountsDrawerHeader(
//               accountName: Text("Sanjiv Kushwaha"),
//               accountEmail: Text("sanjiv21101@iiitnr.edu.in"),
//               currentAccountPicture: CircleAvatar(
//                 backgroundImage: AssetImage('assets/images/sk.png'),
//               ),
//             ),
//             for (int i = 0; i < 9; i++)
//               ListTile(
//                 title: Text(_getScreenTitle(i)),
//                 onTap: () {
//                   _tabController.animateTo(i);
//                   Navigator.pop(context);
//                 },
//               ),
//           ],
//         ),
//       ),
//       body: TabBarView(
//         controller: _tabController,
//         children: _screens,
//       ),
//     );
//   }

//   void _onNavItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   List<Tab> _getBottomNavItems() {
//     return List.generate(
//       _screens.length,
//       (index) => Tab(
//         text: _getScreenTitle(index),
//       ),
//     );
//   }

//   String _getScreenTitle(int index) {
//     switch (index) {
//       case 0:
//         return 'Home';
//       case 1:
//         return 'About Me';
//       case 2:
//         return 'Project';
//       case 3:
//         return 'CP Profile';
//       case 4:
//         return 'Contact';
//       case 5:
//         return 'Technical Skill';
//       case 6:
//         return 'Resume';
//       case 7:
//         return 'Education';
//       case 8:
//         return 'Certificate';
//       default:
//         return '';
//     }
//   }

//   final List<Widget> _screens = [
//     const HomeScreen(),
//     const AboutMeScreen(),
//     const ProjectScreen(),
//     const CpProfileScreen(),
//     const ContactScreen(),
//     const TechnicalSkillsScreen(),
//     const ResumeScreen(),
//     const EducationScreen(),
//     const CertificateScreen(),
//   ];

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }
// }

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Home Screen Content', style: TextStyle(fontSize: 24)),
//     );
//   }
// }

// class AboutMeScreen extends StatelessWidget {
//   const AboutMeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('About Me Screen Content', style: TextStyle(fontSize: 24)),
//     );
//   }
// }

// class ProjectScreen extends StatelessWidget {
//   const ProjectScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Project Screen Content', style: TextStyle(fontSize: 24)),
//     );
//   }
// }

// class CpProfileScreen extends StatelessWidget {
//   const CpProfileScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('CP Profile Screen Content', style: TextStyle(fontSize: 24)),
//     );
//   }
// }

// class ContactScreen extends StatelessWidget {
//   const ContactScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Contact Screen Content', style: TextStyle(fontSize: 24)),
//     );
//   }
// }

// class TechnicalSkillsScreen extends StatelessWidget {
//   const TechnicalSkillsScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Technical Skills Screen Content',
//           style: TextStyle(fontSize: 24)),
//     );
//   }
// }

// class ResumeScreen extends StatelessWidget {
//   const ResumeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Resume Screen Content', style: TextStyle(fontSize: 24)),
//     );
//   }
// }

// class EducationScreen extends StatelessWidget {
//   const EducationScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Education Screen Content', style: TextStyle(fontSize: 24)),
//     );
//   }
// }

// class CertificateScreen extends StatelessWidget {
//   const CertificateScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Certificate Screen Content', style: TextStyle(fontSize: 24)),
//     );
//   }
// }

// **************************************************************************************************************
//*********************************** Tab Bar Without Layout Builder*******************************************
// **********************************************************************************************************


// import 'package:device_preview/device_preview.dart';
// import 'package:flutter/material.dart';

// // void main() {
// //   runApp(const MyApp());
// // }

// void main() async {
//   runApp(
//     DevicePreview(
//       enabled: true,
//       builder: (context) => const MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'My Portfolio',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   // ignore: library_private_types_in_public_api
//   _MyHomePageState createState() => _MyHomePageState();
// }


// class _MyHomePageState extends State<MyHomePage> {
//   int _selectedIndex = 0;

//   final List<Widget> _screens = [
//     const HomeScreen(),
//     const AboutMeScreen(),
//     const ProjectScreen(),
//     const CpProfileScreen(),
//     const ContactScreen(),
//     const TechnicalSkillsScreen(),
//     const ResumeScreen(),
//     const EducationScreen(),
//     const CertificateScreen(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('My Portfolio'),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Center(
//                 child: CircleAvatar(
//                   radius: 50,
//                   backgroundImage: AssetImage('assets/your_photo.jpg'),
//                 ),
//               ),
//             ),
//             for (int i = 0; i < _screens.length; i++)
//               ListTile(
//                 title: Text(_getScreenTitle(i)),
//                 onTap: () {
//                   _onNavItemTapped(i);
//                   Navigator.pop(context);
//                 },
//               ),
//           ],
//         ),
//       ),
//       body: _screens[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         items: _getBottomNavItems(),
//         currentIndex: _selectedIndex,
//         onTap: _onNavItemTapped,
//         selectedItemColor: Colors.blue,
//         backgroundColor: Colors.white,
//         unselectedItemColor: Colors.grey,
//       ),
//     );
//   }

//   void _onNavItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   String _getScreenTitle(int index) {
//     switch (index) {
//       case 0:
//         return 'Home';
//       case 1:
//         return 'About Me';
//       case 2:
//         return 'Project';
//       case 3:
//         return 'CP Profile';
//       case 4:
//         return 'Contact';
//       case 5:
//         return 'Technical Skill';
//       case 6:
//         return 'Resume';
//       case 7:
//         return 'Education';
//       case 8:
//         return 'Certificate';
//       default:
//         return '';
//     }
//   }

//   List<BottomNavigationBarItem> _getBottomNavItems() {
//     return List.generate(
//       _screens.length,
//       (index) => BottomNavigationBarItem(
//         icon: Icon(_getBottomNavIcon(index)),
//         label: _getScreenTitle(index),
//       ),
//     );
//   }

//   IconData _getBottomNavIcon(int index) {
//     switch (index) {
//       case 0:
//         return Icons.home;
//       case 1:
//         return Icons.person;
//       case 2:
//         return Icons.work;
//       case 3:
//         return Icons.account_circle;
//       case 4:
//         return Icons.contact_emergency_outlined;
//       case 5:
//         return Icons.mail;
//       case 6:
//         return Icons.mail;
//       case 7:
//         return Icons.school;
//       case 8:
//         return Icons.mail;
//       default:
//         return Icons.home;
//     }
//   }
// }
// // *******************************************

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Home Screen'),
//           bottom: const TabBar(
//             tabs: [
//               Tab(text: 'Tab 1'),
//               Tab(text: 'Tab 2'),
//               Tab(text: 'Tab 3'),
//             ],
//           ),
//         ),
//         body: const TabBarView(
//           children: [
//             Center(child: Text('Tab 4 Content')),
//             Center(child: Text('Tab 5 Content')),
//             Center(child: Text('Tab 6 Content')),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class AboutMeScreen extends StatelessWidget {
//   const AboutMeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Home Screen'),
//           bottom: const TabBar(
//             tabs: [
//               Tab(text: 'Tab 7'),
//               Tab(text: 'Tab 8'),
//               Tab(text: 'Tab 9'),
//             ],
//           ),
//         ),
//         body: const TabBarView(
//           children: [
//             Center(child: Text('Tab 10 Content')),
//             Center(child: Text('Tab 11 Content')),
//             Center(child: Text('Tab 12 Content')),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ProjectScreen extends StatelessWidget {
//   const ProjectScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Home Screen'),
//           bottom: const TabBar(
//             tabs: [
//               Tab(text: 'Tab 13'),
//               Tab(text: 'Tab 14'),
//               Tab(text: 'Tab 15'),
//             ],
//           ),
//         ),
//         body: const TabBarView(
//           children: [
//             Center(child: Text('Tab 16 Content')),
//             Center(child: Text('Tab 17 Content')),
//             Center(child: Text('Tab 18 Content')),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CpProfileScreen extends StatelessWidget {
//   const CpProfileScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Home Screen'),
//           bottom: const TabBar(
//             tabs: [
//               Tab(text: 'Tab 19'),
//               Tab(text: 'Tab 20'),
//               Tab(text: 'Tab 21'),
//             ],
//           ),
//         ),
//         body: const TabBarView(
//           children: [
//             Center(child: Text('Tab 22 Content')),
//             Center(child: Text('Tab 23 Content')),
//             Center(child: Text('Tab 24 Content')),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ContactScreen extends StatelessWidget {
//   const ContactScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Home Screen'),
//           bottom: const TabBar(
//             tabs: [
//               Tab(text: 'Tab 25'),
//               Tab(text: 'Tab 26'),
//               Tab(text: 'Tab 27'),
//             ],
//           ),
//         ),
//         body: const TabBarView(
//           children: [
//             Center(child: Text('Tab 28 Content')),
//             Center(child: Text('Tab 29 Content')),
//             Center(child: Text('Tab 30 Content')),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class TechnicalSkillsScreen extends StatelessWidget {
//   const TechnicalSkillsScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Home Screen'),
//           bottom: const TabBar(
//             tabs: [
//               Tab(text: 'Tab 11'),
//               Tab(text: 'Tab 32'),
//               Tab(text: 'Tab 33'),
//             ],
//           ),
//         ),
//         body: const TabBarView(
//           children: [
//             Center(child: Text('Tab 34 Content')),
//             Center(child: Text('Tab 35 Content')),
//             Center(child: Text('Tab 36 Content')),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ResumeScreen extends StatelessWidget {
//   const ResumeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Home Screen'),
//           bottom: const TabBar(
//             tabs: [
//               Tab(text: 'Tab 37'),
//               Tab(text: 'Tab 38'),
//               Tab(text: 'Tab 39'),
//             ],
//           ),
//         ),
//         body: const TabBarView(
//           children: [
//             Center(child: Text('Tab 40 Content')),
//             Center(child: Text('Tab 41 Content')),
//             Center(child: Text('Tab 42 Content')),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class EducationScreen extends StatelessWidget {
//   const EducationScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Home Screen'),
//           bottom: const TabBar(
//             tabs: [
//               Tab(text: 'Tab 43'),
//               Tab(text: 'Tab 44'),
//               Tab(text: 'Tab 45'),
//             ],
//           ),
//         ),
//         body: const TabBarView(
//           children: [
//             Center(child: Text('Tab 46 Content')),
//             Center(child: Text('Tab 47 Content')),
//             Center(child: Text('Tab 48 Content')),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CertificateScreen extends StatelessWidget {
//   const CertificateScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Home Screen'),
//           bottom: const TabBar(
//             tabs: [
//               Tab(text: 'Tab 49'),
//               Tab(text: 'Tab 50'),
//               Tab(text: 'Tab 51'),
//             ],
//           ),
//         ),
//         body: const TabBarView(
//           children: [
//             Center(child: Text('Tab 52 Content')),
//             Center(child: Text('Tab 53 Content')),
//             Center(child: Text('Tab 54 Content')),
//           ],
//         ),
//       ),
//     );
//   }
// }


//*************************************************************************************************************************
//*********************************** Tab Bar with Layout Builder ************************************************************

// import 'package:device_preview/device_preview.dart';
// import 'package:flutter/material.dart';

// // void main() {
// //   runApp(const MyApp());
// // }

// void main() async {
//   runApp(
//     DevicePreview(
//       enabled: true,
//       builder: (context) => const MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'My Portfolio',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   // ignore: library_private_types_in_public_api
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _selectedIndex = 0;

//   final List<Widget> _screens = [
//     const HomeScreen(),
//     const AboutMeScreen(),
//     const ProjectScreen(),
//     const CpProfileScreen(),
//     const ContactScreen(),
//     const TechnicalSkillsScreen(),
//     const ResumeScreen(),
//     const EducationScreen(),
//     const CertificateScreen(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('My Portfolio'),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Center(
//                 child: CircleAvatar(
//                   radius: 50,
//                   backgroundImage: AssetImage('assets/your_photo.jpg'),
//                 ),
//               ),
//             ),
//             for (int i = 0; i < _screens.length; i++)
//               ListTile(
//                 title: Text(_getScreenTitle(i)),
//                 onTap: () {
//                   _onNavItemTapped(i);
//                   Navigator.pop(context);
//                 },
//               ),
//           ],
//         ),
//       ),
//       body: _screens[_selectedIndex],
//       // bottomNavigationBar: BottomNavigationBar(
//       //   items: const [
//       //     BottomNavigationBarItem(
//       //       icon: Icon(Icons.home),
//       //       label: 'Home',
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Icon(Icons.person),
//       //       label: 'About Me',
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Icon(Icons.work),
//       //       label: 'Project',
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Icon(Icons.account_circle),
//       //       label: 'CP Profile',
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Icon(Icons.contact_emergency_outlined),
//       //       label: 'Contact',
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Icon(Icons.mail),
//       //       label: 'Technical Skill',
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Icon(Icons.mail),
//       //       label: 'Resume',
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Icon(Icons.school),
//       //       label: 'Education',
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Icon(Icons.mail),
//       //       label: 'Certificate',
//       //     ),
//       //   ],
//       //   currentIndex: _selectedIndex,
//       //   onTap: _onNavItemTapped,
//       //   selectedItemColor: Colors.blue,
//       //   backgroundColor: Colors.white,
//       //   unselectedItemColor: Colors.grey,
//       // ),
//       // *******************************************
//       bottomNavigationBar: LayoutBuilder(
//         builder: (context, constraints) {
//           if (constraints.maxWidth <= 600) {
//             // For smaller screens, show icons only
//             return BottomNavigationBar(
//               items: const [
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.home),
//                   label: 'Home',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.person),
//                   label: 'About Me',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.work),
//                   label: 'Project',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.account_circle),
//                   label: 'CP Profile',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.contact_emergency_outlined),
//                   label: 'Contact',
//                 ),
//               ],
//               currentIndex: _selectedIndex,
//               onTap: _onNavItemTapped,
//               selectedItemColor: Colors.blue,
//               backgroundColor: Colors.white,
//               unselectedItemColor: Colors.grey,
//             );
//           } else {
//             // For larger screens, show icons and labels
//             return BottomNavigationBar(
//               items: const [
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.home),
//                   label: 'Home',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.person),
//                   label: 'About Me',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.work),
//                   label: 'Project',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.account_circle),
//                   label: 'CP Profile',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.contact_emergency_outlined),
//                   label: 'Contact',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.mail),
//                   label: 'Technical Skill',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.mail),
//                   label: 'Resume',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.school),
//                   label: 'Education',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.mail),
//                   label: 'Certificate',
//                 ),
//               ],
//               currentIndex: _selectedIndex,
//               onTap: _onNavItemTapped,
//               selectedItemColor: Colors.blue,
//               backgroundColor: Colors.white,
//               unselectedItemColor: Colors.grey,
//             );
//           }
//         },
//       ),
//       // *********************************************
//     );
//   }

//   void _onNavItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   String _getScreenTitle(int index) {
//     switch (index) {
//       case 0:
//         return 'Home';
//       case 1:
//         return 'About Me';
//       case 2:
//         return 'Project';
//       case 3:
//         return 'CP Profile';
//       case 4:
//         return 'Contact';
//       case 5:
//         return 'Technical Skill';
//       case 6:
//         return 'Resume';
//       case 7:
//         return 'Education';
//       case 8:
//         return 'Certificate';
//       default:
//         return '';
//     }
//   }
// }

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Home Screen'),
//           bottom: const TabBar(
//             tabs: [
//               Tab(text: 'Tab 1'),
//               Tab(text: 'Tab 2'),
//               Tab(text: 'Tab 3'),
//             ],
//           ),
//         ),
//         body: const TabBarView(
//           children: [
//             Center(child: Text('Tab 4 Content')),
//             Center(child: Text('Tab 5 Content')),
//             Center(child: Text('Tab 6 Content')),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class AboutMeScreen extends StatelessWidget {
//   const AboutMeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Home Screen'),
//           bottom: const TabBar(
//             tabs: [
//               Tab(text: 'Tab 7'),
//               Tab(text: 'Tab 8'),
//               Tab(text: 'Tab 9'),
//             ],
//           ),
//         ),
//         body: const TabBarView(
//           children: [
//             Center(child: Text('Tab 10 Content')),
//             Center(child: Text('Tab 11 Content')),
//             Center(child: Text('Tab 12 Content')),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ProjectScreen extends StatelessWidget {
//   const ProjectScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Home Screen'),
//           bottom: const TabBar(
//             tabs: [
//               Tab(text: 'Tab 13'),
//               Tab(text: 'Tab 14'),
//               Tab(text: 'Tab 15'),
//             ],
//           ),
//         ),
//         body: const TabBarView(
//           children: [
//             Center(child: Text('Tab 16 Content')),
//             Center(child: Text('Tab 17 Content')),
//             Center(child: Text('Tab 18 Content')),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CpProfileScreen extends StatelessWidget {
//   const CpProfileScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Home Screen'),
//           bottom: const TabBar(
//             tabs: [
//               Tab(text: 'Tab 19'),
//               Tab(text: 'Tab 20'),
//               Tab(text: 'Tab 21'),
//             ],
//           ),
//         ),
//         body: const TabBarView(
//           children: [
//             Center(child: Text('Tab 22 Content')),
//             Center(child: Text('Tab 23 Content')),
//             Center(child: Text('Tab 24 Content')),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ContactScreen extends StatelessWidget {
//   const ContactScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Home Screen'),
//           bottom: const TabBar(
//             tabs: [
//               Tab(text: 'Tab 25'),
//               Tab(text: 'Tab 26'),
//               Tab(text: 'Tab 27'),
//             ],
//           ),
//         ),
//         body: const TabBarView(
//           children: [
//             Center(child: Text('Tab 28 Content')),
//             Center(child: Text('Tab 29 Content')),
//             Center(child: Text('Tab 30 Content')),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class TechnicalSkillsScreen extends StatelessWidget {
//   const TechnicalSkillsScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Home Screen'),
//           bottom: const TabBar(
//             tabs: [
//               Tab(text: 'Tab 11'),
//               Tab(text: 'Tab 32'),
//               Tab(text: 'Tab 33'),
//             ],
//           ),
//         ),
//         body: const TabBarView(
//           children: [
//             Center(child: Text('Tab 34 Content')),
//             Center(child: Text('Tab 35 Content')),
//             Center(child: Text('Tab 36 Content')),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ResumeScreen extends StatelessWidget {
//   const ResumeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Home Screen'),
//           bottom: const TabBar(
//             tabs: [
//               Tab(text: 'Tab 37'),
//               Tab(text: 'Tab 38'),
//               Tab(text: 'Tab 39'),
//             ],
//           ),
//         ),
//         body: const TabBarView(
//           children: [
//             Center(child: Text('Tab 40 Content')),
//             Center(child: Text('Tab 41 Content')),
//             Center(child: Text('Tab 42 Content')),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class EducationScreen extends StatelessWidget {
//   const EducationScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Home Screen'),
//           bottom: const TabBar(
//             tabs: [
//               Tab(text: 'Tab 43'),
//               Tab(text: 'Tab 44'),
//               Tab(text: 'Tab 45'),
//             ],
//           ),
//         ),
//         body: const TabBarView(
//           children: [
//             Center(child: Text('Tab 46 Content')),
//             Center(child: Text('Tab 47 Content')),
//             Center(child: Text('Tab 48 Content')),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CertificateScreen extends StatelessWidget {
//   const CertificateScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Home Screen'),
//           bottom: const TabBar(
//             tabs: [
//               Tab(text: 'Tab 49'),
//               Tab(text: 'Tab 50'),
//               Tab(text: 'Tab 51'),
//             ],
//           ),
//         ),
//         body: const TabBarView(
//           children: [
//             Center(child: Text('Tab 52 Content')),
//             Center(child: Text('Tab 53 Content')),
//             Center(child: Text('Tab 54 Content')),
//           ],
//         ),
//       ),
//     );
//   }
// }

// **************************************************************************************************************************
//************************Flutter-Animated-Bottom-Navigation-Bar***************************************************************
//***************** Not working drawer button ************************************************************


// import 'package:convex_bottom_bar/convex_bottom_bar.dart';
// import 'package:device_preview/device_preview.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// void main() async {
//   runApp(
//     DevicePreview(
//       enabled: true,
//       builder: (context) => const MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       localizationsDelegates: const [
//         DefaultMaterialLocalizations.delegate,
//         DefaultWidgetsLocalizations.delegate,
//       ],
//       theme: ThemeData(
//         primarySwatch: Colors.blue, // Add your desired color
//       ),
//       builder: (context, widget) {
//         return MediaQuery(
//           data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
//           child: widget!,
//         );
//       },
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   // ignore: library_private_types_in_public_api
//   _MyHomePageState createState() => _MyHomePageState();
// }
// // ***************************


// class _MyHomePageState extends State<MyHomePage> {
//   int _selectedIndex = 0;

//   final List<Widget> _screens = [
//     const HomeScreen(),
//     const AboutMeScreen(),
//     const ProjectScreen(),
//     const CpProfileScreen(),
//     const ContactScreen(),
//     const TechnicalSkillsScreen(),
//     const ResumeScreen(),
//     const EducationScreen(),
//     const CertificateScreen(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(_getScreenTitle(_selectedIndex)),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             UserAccountsDrawerHeader(
//               accountName: const Text("Sanjiv Kushwaha"),
//               accountEmail: const Text("sanjiv21101@iiitnr.edu.in"),
//               currentAccountPicture: Container(
//                 height: 25,
//                 width: 25,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(100),
//                   image: const DecorationImage(
//                     image: AssetImage('assets/images/sk.png'),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//             ),
//             for (int i = 0; i < _screens.length; i++)
//               ListTile(
//                 title: Text(_getScreenTitle(i)),
//                 onTap: () {
//                   _onNavItemTapped(i);
//                   Navigator.pop(context);
//                 },
//               ),
//           ],
//         ),
//       ),
//       body: _screens[_selectedIndex],
//       bottomNavigationBar: ConvexAppBar(
//         items: _getBottomNavItems(),
//         initialActiveIndex: _selectedIndex,
//         onTap: (int index) {
//           _onNavItemTapped(index);
//         },
//       ),
//     );
//   }

//   void _onNavItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   String _getScreenTitle(int index) {
//     switch (index) {
//       case 0:
//         return 'Home';
//       case 1:
//         return 'About Me';
//       case 2:
//         return 'Project';
//       case 3:
//         return 'CP Profile';
//       case 4:
//         return 'Contact';
//       case 5:
//         return 'Technical Skill';
//       case 6:
//         return 'Resume';
//       case 7:
//         return 'Education';
//       case 8:
//         return 'Certificate';
//       default:
//         return '';
//     }
//   }

//   List<TabItem> _getBottomNavItems() {
//     return List.generate(
//       _screens.length,
//       (index) => TabItem(
//         icon: _getBottomNavIcon(index),
//         title: _getScreenTitle(index),
//       ),
//     );
//   }

//   dynamic _getBottomNavIcon(int index) {
//     switch (index) {
//       case 0:
//         return Icons.home;
//       case 1:
//         return Icons.person;
//       case 2:
//         return Icons.work;
//       case 3:
//         return Icons.account_circle;
//       case 4:
//         return Icons.contact_emergency_outlined;
//       case 5:
//         return FontAwesomeIcons.addressCard;
//       case 6:
//         return FontAwesomeIcons.file;
//       case 7:
//         return Icons.school;
//       case 8:
//         return FontAwesomeIcons.certificate;
//       default:
//         return Icons.home;
//     }
//   }
// }

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         // child: Text('Home Screen Content', style: TextStyle(fontSize: 24)),
//         child: Container(
//           color: Colors.lightBlue[100], // Set a light background color
//           padding: const EdgeInsets.all(16.0),
//           child: const Text(
//             'Home Screen Content',
//             style: TextStyle(fontSize: 24, color: Colors.black),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class AboutMeScreen extends StatelessWidget {
//   const AboutMeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         // child: Text('', style: TextStyle(fontSize: 24)),
//         child: Container(
//           color: Colors.lightBlue[100], // Set a light background color
//           padding: const EdgeInsets.all(16.0),
//           child: const Text(
//             'About Me Screen Content',
//             style: TextStyle(fontSize: 24, color: Colors.black),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ProjectScreen extends StatelessWidget {
//   const ProjectScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         // child: Text('Project Screen Content', style: TextStyle(fontSize: 24)),
//         child: Container(
//           color: Colors.lightBlue[100], // Set a light background color
//           padding: const EdgeInsets.all(16.0),
//           child: const Text(
//             'Project Screen Content',
//             style: TextStyle(fontSize: 24, color: Colors.black),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CpProfileScreen extends StatelessWidget {
//   const CpProfileScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         // child:
//         // Text('CP Profile Screen Content', style: TextStyle(fontSize: 24)),
//         child: Container(
//           color: Colors.lightBlue[100], // Set a light background color
//           padding: const EdgeInsets.all(16.0),
//           child: const Text(
//             'CP Profile Screen Content',
//             style: TextStyle(fontSize: 24, color: Colors.black),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ContactScreen extends StatelessWidget {
//   const ContactScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         // child: Text('Contact Screen Content', style: TextStyle(fontSize: 24)),
//         child: Container(
//           color: Colors.lightBlue[100], // Set a light background color
//           padding: const EdgeInsets.all(16.0),
//           child: const Text(
//             'Contact Screen Content',
//             style: TextStyle(fontSize: 24, color: Colors.black),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class TechnicalSkillsScreen extends StatelessWidget {
//   const TechnicalSkillsScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         // child: Text('Technical Skills Screen Content',
//         //     style: TextStyle(fontSize: 24)),
//         child: Container(
//           color: Colors.lightBlue[100], // Set a light background color
//           padding: const EdgeInsets.all(16.0),
//           child: const Text(
//             'Technical Skills Screen Content',
//             style: TextStyle(fontSize: 24, color: Colors.black),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ResumeScreen extends StatelessWidget {
//   const ResumeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         // child: Text('Resume Screen Content', style: TextStyle(fontSize: 24)),
//         child: Container(
//           color: Colors.lightBlue[100], // Set a light background color
//           padding: const EdgeInsets.all(16.0),
//           child: const Text(
//             'Resume Screen Content',
//             style: TextStyle(fontSize: 24, color: Colors.black),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class EducationScreen extends StatelessWidget {
//   const EducationScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         // child: Text('Education Screen Content', style: TextStyle(fontSize: 24)),
//         child: Container(
//           color: Colors.lightBlue[100], // Set a light background color
//           padding: const EdgeInsets.all(16.0),
//           child: const Text(
//             'Education Screen Content',
//             style: TextStyle(fontSize: 24, color: Colors.black),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CertificateScreen extends StatelessWidget {
//   const CertificateScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         // child:
//         // Text('Certificate Screen Content', style: TextStyle(fontSize: 24)),
//         child: Container(
//           color: Colors.lightBlue[100], // Set a light background color
//           padding: const EdgeInsets.all(16.0),
//           child: const Text(
//             'Certificate Screen Content',
//             style: TextStyle(fontSize: 24, color: Colors.black),
//           ),
//         ),
//       ),
//     );
//   }
// }


//********************************************************************************************************
//************* Animated bottom nav bar with working drawer button ***************************************


// // ignore_for_file: library_private_types_in_public_api


// import 'package:convex_bottom_bar/convex_bottom_bar.dart';
// import 'package:device_preview/device_preview.dart';
// import 'package:flutter/material.dart';
// // import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// void main() async {
//   runApp(
//     DevicePreview(
//       enabled: true,
//       builder: (context) => const MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       localizationsDelegates: const [
//         DefaultMaterialLocalizations.delegate,
//         DefaultWidgetsLocalizations.delegate,
//       ],
//       theme: ThemeData(
//         primarySwatch: Colors.blue, // Add your desired color
//       ),
//       builder: (context, widget) {
//         return MediaQuery(
//           data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
//           child: widget!,
//         );
//       },
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _selectedIndex = 0;

//   final List<Widget> _screens = [
//     const HomeScreen(),
//     const AboutMeScreen(),
//     const ProjectScreen(),
//     const CpProfileScreen(),
//     const ContactScreen(),
//     const TechnicalSkillsScreen(),
//     const ResumeScreen(),
//     const EducationScreen(),
//     const CertificateScreen(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(_getScreenTitle(_selectedIndex)),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             const UserAccountsDrawerHeader(
//               accountName: Text("Sanjiv Kushwaha"),
//               accountEmail: Text("sanjiv21101@iiitnr.edu.in"),
//               currentAccountPicture: CircleAvatar(
//                 backgroundImage: AssetImage('assets/images/sk.png'),
//               ),
//             ),
//             for (int i = 0; i < _screens.length; i++)
//               ListTile(
//                 title: Text(_getScreenTitle(i)),
//                 onTap: () {
//                   _onNavItemTapped(i);
//                   Navigator.pop(context);
//                 },
//               ),
//           ],
//         ),
//       ),
//       body: _screens[_selectedIndex],
//       bottomNavigationBar: ConvexAppBar(
//         items: _getBottomNavItems(),
//         initialActiveIndex: _selectedIndex,
//         onTap: (int index) {
//           _onNavItemTapped(index);
//         },
//         key: UniqueKey(),
//       ),
//     );
//   }

//   void _onNavItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   // List<BottomNavigationBarItem> _getBottomNavItems() {
//   //   return List.generate(
//   //     _screens.length,
//   //     (index) => BottomNavigationBarItem(
//   //       icon: Icon(_getBottomNavIcon(index)),
//   //       label: _getScreenTitle(index),
//   //     ),
//   //   );
//   // }
//   List<TabItem> _getBottomNavItems() {
//     return List.generate(
//       _screens.length,
//       (index) => TabItem(
//         icon: _getBottomNavIcon(index),
//         title: _getScreenTitle(index),
//       ),
//     );
//   }

//   IconData _getBottomNavIcon(int index) {
//     switch (index) {
//       case 0:
//         return Icons.home;
//       case 1:
//         return Icons.person;
//       case 2:
//         return Icons.work;
//       case 3:
//         return Icons.account_circle;
//       case 4:
//         return Icons.contact_emergency_outlined;
//       case 5:
//         return Icons.mail;
//       case 6:
//         return Icons.mail;
//       case 7:
//         return Icons.school;
//       case 8:
//         return Icons.mail;
//       default:
//         return Icons.home;
//     }
//   }

//   String _getScreenTitle(int index) {
//     switch (index) {
//       case 0:
//         return 'Home';
//       case 1:
//         return 'About Me';
//       case 2:
//         return 'Project';
//       case 3:
//         return 'CP Profile';
//       case 4:
//         return 'Contact';
//       case 5:
//         return 'Technical Skill';
//       case 6:
//         return 'Resume';
//       case 7:
//         return 'Education';
//       case 8:
//         return 'Certificate';
//       default:
//         return '';
//     }
//   }
// }

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           color: Colors.lightBlue[100],
//           padding: const EdgeInsets.all(16.0),
//           child: const Text(
//             'Home Screen Content',
//             style: TextStyle(fontSize: 24, color: Colors.black),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class AboutMeScreen extends StatelessWidget {
//   const AboutMeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           color: Colors.lightBlue[100],
//           padding: const EdgeInsets.all(16.0),
//           child: const Text(
//             'About Me Screen Content',
//             style: TextStyle(fontSize: 24, color: Colors.black),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ProjectScreen extends StatelessWidget {
//   const ProjectScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           color: Colors.lightBlue[100],
//           padding: const EdgeInsets.all(16.0),
//           child: const Text(
//             'Project Screen Content',
//             style: TextStyle(fontSize: 24, color: Colors.black),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CpProfileScreen extends StatelessWidget {
//   const CpProfileScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           color: Colors.lightBlue[100],
//           padding: const EdgeInsets.all(16.0),
//           child: const Text(
//             'CP Profile Screen Content',
//             style: TextStyle(fontSize: 24, color: Colors.black),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ContactScreen extends StatelessWidget {
//   const ContactScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           color: Colors.lightBlue[100],
//           padding: const EdgeInsets.all(16.0),
//           child: const Text(
//             'Contact Screen Content',
//             style: TextStyle(fontSize: 24, color: Colors.black),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class TechnicalSkillsScreen extends StatelessWidget {
//   const TechnicalSkillsScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           color: Colors.lightBlue[100],
//           padding: const EdgeInsets.all(16.0),
//           child: const Text(
//             'Technical Skills Screen Content',
//             style: TextStyle(fontSize: 24, color: Colors.black),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ResumeScreen extends StatelessWidget {
//   const ResumeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           color: Colors.lightBlue[100],
//           padding: const EdgeInsets.all(16.0),
//           child: const Text(
//             'Resume Screen Content',
//             style: TextStyle(fontSize: 24, color: Colors.black),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class EducationScreen extends StatelessWidget {
//   const EducationScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           color: Colors.lightBlue[100],
//           padding: const EdgeInsets.all(16.0),
//           child: const Text(
//             'Education Screen Content',
//             style: TextStyle(fontSize: 24, color: Colors.black),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CertificateScreen extends StatelessWidget {
//   const CertificateScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           color: Colors.lightBlue[100],
//           padding: const EdgeInsets.all(16.0),
//           child: const Text(
//             'Certificate Screen Content',
//             style: TextStyle(fontSize: 24, color: Colors.black),
//           ),
//         ),
//       ),
//     );
//   }
// } 