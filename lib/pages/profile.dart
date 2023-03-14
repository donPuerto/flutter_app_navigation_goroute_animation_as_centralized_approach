import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String username;
  final String userId;
  const Profile({Key? key, required this.username, required this.userId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      body: Column(
        children: [
          // ignore: avoid_unnecessary_containers
          Container(
            child: const Center(
              child: Text('Profile Page'),
            ),
          ),
          Text("$username $userId")
        ],
      ),
    );
  }
}
