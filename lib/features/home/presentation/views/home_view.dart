import 'package:dalel/core/functions/app_functions.dart';
import 'package:dalel/core/routers/app_routers.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
                customNavigatorpushReplacement(
                    context, AppRouters().signInView);
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Text('home view'),
      ),
    );
  }
}
