import 'package:flutter/material.dart';
import 'package:theta_api_intro_tutorial/gui_components/button_templates/request_button.dart';
import 'package:theta_api_intro_tutorial/gui_components/button_templates/button_group.dart';
import 'package:theta_connection/theta_connection.dart';

class FilesGroup extends StatelessWidget {
  const FilesGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<RequestButton> buttonList = [
      RequestButton(
        apiRequest: listFilesLast,
        label: 'last file',
        description: 'last file full information',
      ),
      RequestButton(
        apiRequest: listFilesFifty,
        label: '50 files',
        description: 'list full information on last 50 files ',
      ),
      RequestButton(
        apiRequest: listUrlLast,
        label: 'last URI',
        description: 'list the uri of the last file on the camera ',
      ),
      RequestButton(
        apiRequest: listUrlFifty,
        label: 'Fifty URIs',
        description: 'list 50 image URIs from the camera ',
      ),
      RequestButton(
        apiRequest: writeLastFile,
        label: 'write last file',
        description: 'save last file to Windows Pictures folder ',
      ),
    ];
    return ButtonGroup(
        color: Colors.green[50], buttonList: buttonList, groupLabel: 'Files');
  }
}
