import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:theta_api_intro_tutorial/notifiers/response_notifier.dart';
import 'package:provider/provider.dart';

class ThumbScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Uint8List> thumbList = context.read<ResponseNotifier>().thumbList;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[100],
      ),
      body: ListView.builder(
          itemCount: thumbList.length,
          itemBuilder: (context, index) {
            return Image.memory(thumbList[index]);
          }),
    );
  }
}
