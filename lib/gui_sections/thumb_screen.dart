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
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              childAspectRatio: 2,
              crossAxisSpacing: 3,
              mainAxisSpacing: 3),
          itemCount: thumbList.length,
          itemBuilder: (context, index) {
            return Container(
              height: 180,
              child: Image.memory(
                thumbList[index],
              ),
            );
          }),
    );
  }
}
