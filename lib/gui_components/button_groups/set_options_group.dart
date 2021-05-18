import 'package:flutter/material.dart';
import 'package:theta_api_intro_tutorial/gui_components/button_templates/button_group.dart';
import 'package:theta_api_intro_tutorial/gui_components/button_templates/request_button.dart';
import 'package:theta_connection/theta_connection.dart';

class SetOptionsGroup extends StatelessWidget {
  const SetOptionsGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var buttonList = [
      RequestButton(
        apiRequest: disableHdr,
        label: 'disable HDR',
        description: 'turn off HDR filter for current session. '
            'Will revert to MySettings if camera is turned off.',
      ),
    ];
    return ButtonGroup(
        color: Colors.orange[50],
        buttonList: buttonList,
        groupLabel: 'Set Options');
  }
}
