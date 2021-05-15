import 'package:flutter/material.dart';
import 'package:theta_api_intro_tutorial/gui_sections/response_window.dart';
import 'button_window.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ButtonWindow(),
            ResponseWindow(),
          ],
        ),
      ),
    );
  }
}
