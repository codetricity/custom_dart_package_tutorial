import 'package:flutter/material.dart';
import 'package:theta_api_intro_tutorial/gui_components/button_templates/button_group.dart';
import 'package:theta_api_intro_tutorial/gui_components/button_templates/request_button.dart';
import 'package:theta_connection/theta_connection.dart';

class ShutterButtonGroup extends StatelessWidget {
  const ShutterButtonGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var buttonList = [
      RequestButton(
        apiRequest: takePicture,
        label: 'Take Picture',
        description: 'take still image picture ',
      ),
    ];
    return ButtonGroup(
        color: Colors.purple[50],
        buttonList: buttonList,
        groupLabel: 'Shutter Button');
  }
}
