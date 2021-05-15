import 'package:flutter/material.dart';
import 'package:theta_api_intro_tutorial/gui_sections/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:theta_api_intro_tutorial/notifiers/response_notifier.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ResponseNotifier(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
