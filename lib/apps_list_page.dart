import 'package:drible_app/router/app_router.dart';
import 'package:flutter/material.dart';

class AppsListPage extends StatelessWidget {
  const AppsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Apps List')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
        child: ListView(
          children: [
            ListTile(
              title: const Text('Education App'),
              subtitle: const Text('Minimalist education app from Dribble'),
              onTap: () {
                Navigator.pushNamed(context, AppRouter.edRegisterView);
              },
            ),
            ListTile(
              title: const Text('Water Consumed App'),
              subtitle: const Text('Minimalist water consumed app'),
              onTap: () {
                Navigator.pushNamed(context, AppRouter.wcHomeView);
              },
            ),
            ListTile(
              title: const Text('Task Manager app'),
              subtitle: const Text('Minimalist Task Manager app'),
              onTap: () {
                Navigator.pushNamed(context, AppRouter.mintHomeView);
              },
            ),
          ],
        ),
      ),
    );
  }
}
