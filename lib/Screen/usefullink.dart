import 'package:flutter/material.dart';

class UsefulLink extends StatelessWidget {
  const UsefulLink({super.key});

  // const UsefulLink({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading:
        //     IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        // backgroundColor: Colors.blue,
        title: const Text('Useful Links'),
      ),
      body: const Center(
        child:
            Text('Useful Links Screen Content', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
