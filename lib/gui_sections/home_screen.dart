import 'package:flutter/material.dart';
import 'package:theta_api_intro_tutorial/gui_sections/response_window.dart';
import 'package:theta_api_intro_tutorial/notifiers/response_notifier.dart';
import 'package:theta_connection/theta_connection.dart';
import 'button_window.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[100],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('thumbs'),
              onTap: () async {
                var thumbList = await getThumbFifty();
                context.read<ResponseNotifier>().updateThumbList(thumbList);
                Navigator.pushNamed(context, '/thumb');
              },
            )
          ],
        ),
      ),
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
