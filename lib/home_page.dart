import 'package:flutter/material.dart';
import 'package:notification/firebase_service.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final firebaseService = Firebaseservice();
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Homepage")),
    );
  }
}
