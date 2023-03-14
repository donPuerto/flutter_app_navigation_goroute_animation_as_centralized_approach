import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../project/routes/app_route_path_name.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Page'),
      ),
      body: Column(
        children: [
          // ignore: avoid_unnecessary_containers
          Container(
            child: const Center(
              child: Text('Home Page'),
            ),
          ),
          const SizedBox(height: 8.0),
          ElevatedButton(
            onPressed: () {
              // GoRouter.of(context).pushNamed(RouteNames.aboutRoute);
              context.pushNamed(RouteNames.aboutRoute);
            },
            child: const Text('About Page'),
          ),
          const SizedBox(height: 8.0),
          ElevatedButton(
            onPressed: () {
              // GoRouter.of(context).pushNamed(RouteNames.aboutRoute);
              context.pushNamed(RouteNames.profileRoute,
                  params: {'username': "Don Puerto", "userId": "12345"});
            },
            child: const Text('Profile Page'),
          ),
          ElevatedButton(
            onPressed: () {
              // GoRouter.of(context).pushNamed(RouteNames.aboutRoute);
              context.pushNamed(RouteNames.contactUsRoute);
            },
            child: const Text('Contact Us Page'),
          ),
        ],
      ),
    );
  }
}
