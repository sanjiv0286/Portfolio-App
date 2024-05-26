// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:http/http.dart' as http;
import 'package:portfolio/sevices/internet_connection.dart';
import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';

class CpProfileScreen extends StatefulWidget {
  const CpProfileScreen({Key? key}) : super(key: key);

  @override
  State<CpProfileScreen> createState() => _CpProfileScreenState();
}

class _CpProfileScreenState extends State<CpProfileScreen> {
  late Future<Map<String, dynamic>> leetCodeData;
  late Future<Map<String, dynamic>> codeChefData;

  @override
  void initState() {
    Internet().checkInternetCon();
    super.initState();

    leetCodeData = fetchLeetCodeData('sanjiv0286');
    codeChefData = fetchCodeChefData('stupid_romio');
  }

  Future<Map<String, dynamic>> fetchLeetCodeData(String username) async {
    final response = await http.get(
        Uri.parse('https://leetcode-api-faisalshohag.vercel.app/$username'));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<Map<String, dynamic>> fetchCodeChefData(String username) async {
    final response =
        await http.get(Uri.parse('https://codechef-api.vercel.app/$username'));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }

  Widget buildProfileButton(String url, String buttonText) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: const Color.fromARGB(255, 49, 3, 231),
      ),
      child: ElevatedButton(
        onPressed: () {
          launch(url);
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          backgroundColor: Colors.transparent,
          elevation: 1,
        ),
        child: Text(
          buttonText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'My Coding Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 3,
                child: ExpansionTile(
                  title: const Text(
                    'LeetCode Profile',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                  children: [
                    FutureBuilder<Map<String, dynamic>>(
                      future: leetCodeData,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                              child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: CircularProgressIndicator(),
                          ));
                        } else if (snapshot.hasError) {
                          // return Center(
                          //     child: Text('Error: ${snapshot.error}'));
                          return const Center(
                              child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: CircularProgressIndicator(),
                          ));
                        } else if (!snapshot.hasData) {
                          // return const Center(child: Text('No data found'));
                          return const Center(
                              child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: CircularProgressIndicator(),
                          ));
                        } else {
                          final data = snapshot.data!;
                          final totalQuestions = data['totalQuestions'] ?? 0;
                          final easySolved = data['easySolved'] ?? 0;
                          final totalEasy = data['totalEasy'] ?? 0;
                          final mediumSolved = data['mediumSolved'] ?? 0;
                          final totalMedium = data['totalMedium'] ?? 0;
                          final hardSolved = data['hardSolved'] ?? 0;
                          final totalHard = data['totalHard'] ?? 0;
                          final ranking = data['ranking'] ?? 'N/A';
                          final contributionPoint =
                              data['contributionPoint'] ?? 0;
                          final reputation = data['reputation'] ?? 0;

                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'LeetCode Statistics',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    ListTile(
                                      leading:
                                          const Icon(Icons.question_answer),
                                      title: const Text(
                                        'Total Questions',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      trailing: Text(
                                        totalQuestions.toString(),
                                        style: const TextStyle(fontSize: 16),
                                      ),
                                    ),
                                    ListTile(
                                      leading: const Icon(
                                          Icons.check_circle_outline),
                                      title: const Text(
                                        'Easy Solved',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      trailing: Text(
                                        '$easySolved / $totalEasy',
                                        style: const TextStyle(fontSize: 16),
                                      ),
                                    ),
                                    ListTile(
                                      leading: const Icon(
                                          Icons.check_circle_outline),
                                      title: const Text(
                                        'Medium Solved',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      trailing: Text(
                                        '$mediumSolved / $totalMedium',
                                        style: const TextStyle(fontSize: 16),
                                      ),
                                    ),
                                    ListTile(
                                      leading: const Icon(
                                          Icons.check_circle_outline),
                                      title: const Text(
                                        'Hard Solved',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      trailing: Text(
                                        '$hardSolved / $totalHard',
                                        style: const TextStyle(fontSize: 16),
                                      ),
                                    ),
                                    ListTile(
                                      leading: const Icon(Icons.stars),
                                      title: const Text(
                                        'Ranking',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      trailing: Text(
                                        ranking.toString(),
                                        style: const TextStyle(fontSize: 16),
                                      ),
                                    ),
                                    ListTile(
                                      leading: const Icon(Icons.star),
                                      title: const Text(
                                        'Contribution Points',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      trailing: Text(
                                        contributionPoint.toString(),
                                        style: const TextStyle(fontSize: 16),
                                      ),
                                    ),
                                    ListTile(
                                      leading: const Icon(Icons.thumb_up),
                                      title: const Text(
                                        'Reputation',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      trailing: Text(
                                        reputation.toString(),
                                        style: const TextStyle(fontSize: 16),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    buildProfileButton(
                                      'https://leetcode.com/sanjiv0286/',
                                      'View Profile',
                                    ),
                                    const SizedBox(height: 10),
                                  ],
                                ),
                              ),
                            ],
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              Card(
                elevation: 3,
                child: ExpansionTile(
                  title: const Text('CodeChef Profile',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
                  children: [
                    FutureBuilder<Map<String, dynamic>>(
                      future: codeChefData,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                              child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: CircularProgressIndicator(),
                          ));
                        } else if (snapshot.hasError) {
                          // return Center(
                          //     child: Text('Error: ${snapshot.error}'));
                          return const Center(
                              child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: CircularProgressIndicator(),
                          ));
                        } else if (!snapshot.hasData ||
                            snapshot.data!['success'] != true) {
                          // return const Center(child: Text('No data found'));
                          return const Center(
                              child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: CircularProgressIndicator(),
                          ));
                        } else {
                          final data = snapshot.data!;
                          final profile = data['profile'] ?? '';
                          final name = data['name'] ?? 'N/A';
                          final currentRating = data['currentRating'] ?? 0;
                          final highestRating = data['highestRating'] ?? 0;
                          final globalRank = data['globalRank'] ?? 0;
                          final countryRank = data['countryRank'] ?? 0;
                          final stars = data['stars'] ?? '';
                          final ratingData =
                              (data['ratingData'] ?? []) as List<dynamic>;

                          List<FlSpot> spots = ratingData.map<FlSpot>((entry) {
                            return FlSpot(
                              DateTime(
                                int.parse(entry['getyear']),
                                int.parse(entry['getmonth']),
                                int.parse(entry['getday']),
                              ).millisecondsSinceEpoch.toDouble(),
                              double.parse(entry['rating']),
                            );
                          }).toList();

                          return Column(
                            children: [
                              Card(
                                elevation: 3,
                                margin: const EdgeInsets.symmetric(
                                    vertical: 16, horizontal: 16),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 50,
                                        child: ClipOval(
                                          child: Image.network(
                                            profile,
                                            fit: BoxFit.cover,
                                            width: 100,
                                            height: 100,
                                            errorBuilder:
                                                (context, error, stackTrace) {
                                              return const Icon(Icons.error,
                                                  size: 100);
                                            },
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        name,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        'Current Rating: $currentRating ($stars)',
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Highest Rating: $highestRating',
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    StatCard(
                                      title: 'Global Rank',
                                      value: globalRank.toString(),
                                    ),
                                    StatCard(
                                      title: 'Country Rank',
                                      value: countryRank.toString(),
                                    ),
                                  ],
                                ),
                              ),
                              Card(
                                elevation: 3,
                                margin: const EdgeInsets.symmetric(
                                    vertical: 16, horizontal: 16),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      const Text(
                                        'Rating History',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      SizedBox(
                                        height: 300,
                                        child: LineChart(
                                          LineChartData(
                                            minX: spots.isNotEmpty
                                                ? spots.first.x
                                                : 0,
                                            maxX: spots.isNotEmpty
                                                ? spots.last.x
                                                : 0,
                                            minY: spots.isNotEmpty
                                                ? spots.map((e) => e.y).reduce(
                                                        (a, b) =>
                                                            a < b ? a : b) -
                                                    100
                                                : 0,
                                            maxY: spots.isNotEmpty
                                                ? spots.map((e) => e.y).reduce(
                                                        (a, b) =>
                                                            a > b ? a : b) +
                                                    100
                                                : 0,
                                            gridData:
                                                const FlGridData(show: true),
                                            borderData:
                                                FlBorderData(show: true),
                                            lineBarsData: [
                                              LineChartBarData(
                                                spots: spots,
                                                isCurved: true,
                                                barWidth: 2,
                                                dotData:
                                                    const FlDotData(show: true),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              buildProfileButton(
                                  'https://www.codechef.com/users/stupid_romio',
                                  'View Profile'),
                              const SizedBox(height: 10),
                            ],
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // GeeksforGeeks Profile
              Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: const Text('GFG Profile',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w900)),
                    trailing: buildProfileButton(
                        'https://www.geeksforgeeks.org/user/sanjivkushbyx8/',
                        'View Profile'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // StopStalk Profile
              Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: const Text('StopStalk',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w900)),
                    trailing: buildProfileButton(
                        'https://www.stopstalk.com/user/profile/S_K',
                        'View Profile'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StatCard extends StatelessWidget {
  final String title;
  final String value;

  const StatCard({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              value,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ***************************************************************************
// ***************************************************************************
// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:http/http.dart' as http;
// import 'package:portfolio/sevices/internet_connection.dart';
// import 'dart:convert';
// import 'package:url_launcher/url_launcher.dart';

// class CpProfileScreen extends StatefulWidget {
//   const CpProfileScreen({Key? key}) : super(key: key);

//   @override
//   State<CpProfileScreen> createState() => _CpProfileScreenState();
// }

// class _CpProfileScreenState extends State<CpProfileScreen> {
//   late Future<Map<String, dynamic>> leetCodeData;
//   late Future<Map<String, dynamic>> codeChefData;

//   @override
//   void initState() {
//     Internet().checkInternetCon();
//     super.initState();
//     // InternetConnectionChecker().onStatusChange.listen((status) {
//     // final connected = status == InternetConnectionStatus.connected;
//     // showSimpleNotification(
//     //     Text(connected ? "CONNECTED TO INTERNET" : "NO INTERNET"),
//     //     background: Colors.lightGreen);
//     // ScaffoldMessenger.of(context).showSnackBar(
//     //   SnackBar(
//     //     content: Text(connected ? "CONNECTED TO INTERNET" : "NO INTERNET"),
//     //     backgroundColor: connected ? Colors.lightGreen : Colors.red,
//     //     duration: const Duration(seconds: 3),
//     //   ),
//     // );
//     // });

//     leetCodeData = fetchLeetCodeData('sanjiv0286');
//     codeChefData = fetchCodeChefData('stupid_romio');
//   }

//   Future<Map<String, dynamic>> fetchLeetCodeData(String username) async {
//     final response = await http
//         .get(Uri.parse('https://leetcode-stats-api.herokuapp.com/$username'));

//     if (response.statusCode == 200) {
//       return json.decode(response.body);
//     } else {
//       throw Exception('Failed to load data');
//     }
//   }

//   Future<Map<String, dynamic>> fetchCodeChefData(String username) async {
//     final response =
//         await http.get(Uri.parse('https://codechef-api.vercel.app/$username'));

//     if (response.statusCode == 200) {
//       return json.decode(response.body);
//     } else {
//       throw Exception('Failed to load data');
//     }
//   }

//   Widget buildProfileButton(String url, String buttonText) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(25),
//         color: const Color.fromARGB(255, 49, 3, 231),
//       ),
//       child: ElevatedButton(
//         onPressed: () {
//           launch(url);
//         },
//         style: ElevatedButton.styleFrom(
//           padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
//           backgroundColor: Colors.transparent,
//           elevation: 1,
//         ),
//         child: Text(
//           buttonText,
//           style: const TextStyle(
//             color: Colors.white,
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: const Text(
//           'My Coding Profile',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Card(
//                 elevation: 3,
//                 child: ExpansionTile(
//                   title: const Text('CodeChef Profile',
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
//                   children: [
//                     FutureBuilder<Map<String, dynamic>>(
//                       future: codeChefData,
//                       builder: (context, snapshot) {
//                         if (snapshot.connectionState ==
//                             ConnectionState.waiting) {
//                           return const Center(
//                               child: CircularProgressIndicator());
//                         } else if (snapshot.hasError) {
//                           return Center(
//                               child: Text('Error: ${snapshot.error}'));
//                         } else if (!snapshot.hasData ||
//                             snapshot.data!['success'] != true) {
//                           return const Center(child: Text('No data found'));
//                         } else {
//                           final data = snapshot.data!;
//                           final profile = data['profile'] ?? '';
//                           final name = data['name'] ?? 'N/A';
//                           final currentRating = data['currentRating'] ?? 0;
//                           final highestRating = data['highestRating'] ?? 0;
//                           final globalRank = data['globalRank'] ?? 0;
//                           final countryRank = data['countryRank'] ?? 0;
//                           final stars = data['stars'] ?? '';
//                           final ratingData =
//                               (data['ratingData'] ?? []) as List<dynamic>;

//                           List<FlSpot> spots = ratingData.map<FlSpot>((entry) {
//                             return FlSpot(
//                               DateTime(
//                                 int.parse(entry['getyear']),
//                                 int.parse(entry['getmonth']),
//                                 int.parse(entry['getday']),
//                               ).millisecondsSinceEpoch.toDouble(),
//                               double.parse(entry['rating']),
//                             );
//                           }).toList();

//                           return Column(
//                             children: [
//                               Card(
//                                 elevation: 3,
//                                 margin: const EdgeInsets.symmetric(
//                                     vertical: 16, horizontal: 16),
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(16.0),
//                                   child: Column(
//                                     children: [
//                                       CircleAvatar(
//                                         radius: 50,
//                                         child: ClipOval(
//                                           child: Image.network(
//                                             profile,
//                                             fit: BoxFit.cover,
//                                             width: 100,
//                                             height: 100,
//                                             errorBuilder:
//                                                 (context, error, stackTrace) {
//                                               return const Icon(Icons.error,
//                                                   size: 100);
//                                             },
//                                           ),
//                                         ),
//                                       ),
//                                       const SizedBox(height: 10),
//                                       Text(
//                                         name,
//                                         style: const TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 24,
//                                         ),
//                                       ),
//                                       const SizedBox(height: 5),
//                                       Text(
//                                         'Current Rating: $currentRating ($stars)',
//                                         style: const TextStyle(
//                                           fontSize: 16,
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                       ),
//                                       Text(
//                                         'Highest Rating: $highestRating',
//                                         style: const TextStyle(
//                                           fontSize: 16,
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                               SingleChildScrollView(
//                                 scrollDirection: Axis.horizontal,
//                                 child: Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     StatCard(
//                                       title: 'Global Rank',
//                                       value: globalRank.toString(),
//                                     ),
//                                     StatCard(
//                                       title: 'Country Rank',
//                                       value: countryRank.toString(),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Card(
//                                 elevation: 3,
//                                 margin: const EdgeInsets.symmetric(
//                                     vertical: 16, horizontal: 16),
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(16.0),
//                                   child: Column(
//                                     children: [
//                                       const Text(
//                                         'Rating History',
//                                         style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 18,
//                                         ),
//                                       ),
//                                       const SizedBox(height: 10),
//                                       SizedBox(
//                                         height: 300,
//                                         child: LineChart(
//                                           LineChartData(
//                                             minX: spots.isNotEmpty
//                                                 ? spots.first.x
//                                                 : 0,
//                                             maxX: spots.isNotEmpty
//                                                 ? spots.last.x
//                                                 : 0,
//                                             minY: spots.isNotEmpty
//                                                 ? spots.map((e) => e.y).reduce(
//                                                         (a, b) =>
//                                                             a < b ? a : b) -
//                                                     100
//                                                 : 0,
//                                             maxY: spots.isNotEmpty
//                                                 ? spots.map((e) => e.y).reduce(
//                                                         (a, b) =>
//                                                             a > b ? a : b) +
//                                                     100
//                                                 : 0,
//                                             gridData:
//                                                 const FlGridData(show: true),
//                                             borderData:
//                                                 FlBorderData(show: true),
//                                             lineBarsData: [
//                                               LineChartBarData(
//                                                 spots: spots,
//                                                 isCurved: true,
//                                                 barWidth: 2,
//                                                 dotData:
//                                                     const FlDotData(show: true),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(height: 10),
//                               buildProfileButton(
//                                   'https://www.codechef.com/users/stupid_romio',
//                                   'View Profile'),
//                               const SizedBox(height: 10),
//                             ],
//                           );
//                         }
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 20),
//               // GeeksforGeeks Profile
//               Card(
//                 elevation: 3,
//                 child: ListTile(
//                   title: const Text('GeeksforGeeks Profile',
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
//                   trailing: buildProfileButton(
//                       'https://www.geeksforgeeks.org/user/sanjivkushbyx8/',
//                       'View Profile'),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               // StopStalk Profile
//               Card(
//                 elevation: 3,
//                 child: ListTile(
//                   title: const Text('StopStalk Profile',
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
//                   trailing: buildProfileButton(
//                       'https://www.stopstalk.com/user/profile/S_K',
//                       'View Profile'),
//                 ),
//               ),
//               const SizedBox(height: 20),

//               Card(
//                 elevation: 3,
//                 child: ExpansionTile(
//                   title: const Text('LeetCode Profile',
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
//                   children: [
//                     FutureBuilder<Map<String, dynamic>>(
//                       future: leetCodeData,
//                       builder: (context, snapshot) {
//                         if (snapshot.connectionState ==
//                             ConnectionState.waiting) {
//                           return const Center(
//                               child: CircularProgressIndicator());
//                         } else if (snapshot.hasError) {
//                           return Center(
//                               child: Text('Error: ${snapshot.error}'));
//                         } else if (!snapshot.hasData ||
//                             snapshot.data!['status'] != 'success') {
//                           return const Center(child: Text('No data found'));
//                         } else {
//                           final data = snapshot.data!;
//                           return Column(
//                             children: [
//                               ProfileStatCard(
//                                   title: 'Total Solved',
//                                   value: data['totalSolved'].toString()),
//                               ProfileStatCard(
//                                   title: 'Easy Solved',
//                                   value: data['easySolved'].toString()),
//                               ProfileStatCard(
//                                   title: 'Medium Solved',
//                                   value: data['mediumSolved'].toString()),
//                               ProfileStatCard(
//                                   title: 'Hard Solved',
//                                   value: data['hardSolved'].toString()),
//                               ProfileStatCard(
//                                   title: 'Acceptance Rate',
//                                   value: '${data['acceptanceRate']}%'),
//                               ProfileStatCard(
//                                   title: 'Ranking',
//                                   value: data['ranking'].toString()),
//                               ProfileStatCard(
//                                   title: 'Contribution Points',
//                                   value: data['contributionPoints'].toString()),
//                               ProfileChart(data: data),
//                               // const SizedBox(height: 5),
//                               // ElevatedButton(
//                               //   onPressed: () {
//                               //     launch(
//                               //       'https://leetcode.com/u/sanjiv0286/',
//                               //       forceWebView: true,
//                               //     );
//                               //   },
//                               //   child: const Text('View Profile'),
//                               // ),
//                               const SizedBox(height: 10),
//                               buildProfileButton(
//                                   'https://leetcode.com/u/sanjiv0286/',
//                                   'View Profile'),

//                               const SizedBox(height: 10),
//                             ],
//                           );
//                         }
//                       },
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

// class ProfileStatCard extends StatelessWidget {
//   final String title;
//   final String value;

//   const ProfileStatCard({Key? key, required this.title, required this.value})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.symmetric(vertical: 8),
//       child: ListTile(
//         title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
//         trailing: Text(value, style: const TextStyle(fontSize: 16)),
//       ),
//     );
//   }
// }

// class ProfileChart extends StatelessWidget {
//   final Map<String, dynamic> data;

//   const ProfileChart({Key? key, required this.data}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.symmetric(vertical: 16),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             const Text('Solved Questions Breakdown',
//                 style: TextStyle(fontWeight: FontWeight.bold)),
//             const SizedBox(height: 10),
//             SizedBox(
//               height: 200,
//               child: BarChart(
//                 BarChartData(
//                   alignment: BarChartAlignment.spaceAround,
//                   barGroups: [
//                     BarChartGroupData(x: 0, barRods: [
//                       BarChartRodData(
//                           toY: data['easySolved'].toDouble(),
//                           color: Colors.green)
//                     ]),
//                     BarChartGroupData(x: 1, barRods: [
//                       BarChartRodData(
//                           toY: data['mediumSolved'].toDouble(),
//                           color: Colors.orange)
//                     ]),
//                     BarChartGroupData(x: 2, barRods: [
//                       BarChartRodData(
//                           toY: data['hardSolved'].toDouble(), color: Colors.red)
//                     ]),
//                   ],
//                   titlesData: FlTitlesData(
//                     leftTitles: const AxisTitles(
//                       sideTitles: SideTitles(showTitles: true),
//                     ),
//                     bottomTitles: AxisTitles(
//                       sideTitles: SideTitles(
//                         showTitles: true,
//                         getTitlesWidget: (double value, TitleMeta meta) {
//                           switch (value.toInt()) {
//                             case 0:
//                               return const Text('Easy');
//                             case 1:
//                               return const Text('Medium');
//                             case 2:
//                               return const Text('Hard');
//                             default:
//                               return const Text('');
//                           }
//                         },
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class StatCard extends StatelessWidget {
//   final String title;
//   final String value;

//   const StatCard({Key? key, required this.title, required this.value})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 3,
//       margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: const TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 18,
//               ),
//             ),
//             const SizedBox(height: 10),
//             Text(
//               value,
//               style: const TextStyle(
//                 fontSize: 16,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// ***************************** Leetcode *************************************
// ***************************************************************************
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class ApiService {
//   final String username;

//   ApiService(this.username);

//   Future<Map<String, dynamic>> fetchData() async {
//     final response = await http.get(
//         Uri.parse('https://leetcode-api-faisalshohag.vercel.app/$username'));

//     if (response.statusCode == 200) {
//       return json.decode(response.body);
//     } else {
//       throw Exception('Failed to load data');
//     }
//   }
// }

// class CpProfileScreen extends StatelessWidget {
//   const CpProfileScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: ProfilePage(username: 'sanjiv0286'),
//     );
//   }
// }

// class ProfilePage extends StatefulWidget {
//   final String username;

//   const ProfilePage({Key? key, required this.username}) : super(key: key);

//   @override
//   ProfilePageState createState() => ProfilePageState();
// }

// class ProfilePageState extends State<ProfilePage> {
//   late Future<Map<String, dynamic>> _data;

//   @override
//   void initState() {
//     super.initState();
//     _data = ApiService(widget.username).fetchData();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('CP Profile'),
//       ),
//       body: FutureBuilder<Map<String, dynamic>>(
//         future: _data,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else if (!snapshot.hasData ||
//               snapshot.data!['totalSolved'] == null) {
//             return const Center(child: Text('No data found'));
//           } else {
//             final data = snapshot.data!;
//             return ListView(
//               padding: const EdgeInsets.all(16),
//               children: [
//                 Text('Total Solved: ${data['totalSolved']}'),
//                 Text('Total Questions: ${data['totalQuestions']}'),
//                 Text('Easy Solved: ${data['easySolved']}'),
//                 Text('Total Easy: ${data['totalEasy']}'),
//                 Text('Medium Solved: ${data['mediumSolved']}'),
//                 Text('Total Medium: ${data['totalMedium']}'),
//                 Text('Hard Solved: ${data['hardSolved']}'),
//                 Text('Total Hard: ${data['totalHard']}'),
//                 Text('Ranking: ${data['ranking']}'),
//                 Text('Contribution Points: ${data['contributionPoint']}'),
//                 Text('Reputation: ${data['reputation']}'),
//               ],
//             );
//           }
//         },
//       ),
//     );
//   }
// }
