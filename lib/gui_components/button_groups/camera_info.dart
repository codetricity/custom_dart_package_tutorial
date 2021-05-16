import 'package:flutter/material.dart';
import 'package:theta_api_intro_tutorial/gui_components/button_templates/button_group.dart';
import 'package:theta_api_intro_tutorial/gui_components/button_templates/request_button.dart';
import 'package:theta_connection/theta_connection.dart';

class CameraInfo extends StatelessWidget {
  const CameraInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var buttonList = [
      RequestButton(
        apiRequest: info,
        label: 'info',
        description: 'camera information, including firmware version',
      ),
      RequestButton(
        apiRequest: state,
        label: 'state',
        description:
            'battery level, last picture taken, status of camera (check if camera is ready)',
      ),
    ];
    return ButtonGroup(
        color: Colors.lightGreen[100],
        buttonList: buttonList,
        groupLabel: 'camera info');
  }
}
