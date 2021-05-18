import 'package:flutter/material.dart';
import 'package:theta_api_intro_tutorial/gui_components/button_groups/camera_info.dart';
import 'package:theta_api_intro_tutorial/gui_components/button_groups/set_options_group.dart';
import 'package:theta_api_intro_tutorial/gui_components/button_groups/shutter_button_group.dart';
import 'package:theta_api_intro_tutorial/gui_components/button_groups/system_group.dart';
import 'package:theta_api_intro_tutorial/gui_components/button_templates/request_button.dart';
import 'package:theta_api_intro_tutorial/system/get_documents_path.dart';
import 'package:theta_connection/theta_connection.dart';
import '../gui_components/button_groups/network_tests.dart';

/// buttons can be placed individually with RequestButton()
/// or as a group.  The button groups are created as separate
/// files, one file per group
/// if you test an individual button, the syntax is
/// ```
/// RequestButton(apiRequest: info, label: 'info',),
/// ...
/// ```

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
          ShutterButtonGroup(),
          NetworkTests(),
          CameraInfo(),
          SystemGroup(),
          SetOptionsGroup(),
        ],
      ),
    );
  }
}
