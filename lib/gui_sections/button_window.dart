import 'package:flutter/material.dart';
import '../gui_components/button_groups/network_tests.dart';

class ButtonWindow extends StatelessWidget {
  const ButtonWindow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: ListView(
        children: [
          NetworkTests(),
        ],
      ),
    );
  }
}
