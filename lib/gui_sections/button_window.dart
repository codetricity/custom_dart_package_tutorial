import 'package:flutter/material.dart';
import 'package:theta_api_intro_tutorial/gui_components/request_button.dart';
import 'package:theta_connection/theta_connection.dart';

class ButtonWindow extends StatelessWidget {
  const ButtonWindow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RequestButton(
            apiRequest: testNetwork,
            label: 'test network',
          ),
        ],
      ),
    );
  }
}
