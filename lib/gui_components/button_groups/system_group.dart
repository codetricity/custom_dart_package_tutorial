import 'package:flutter/material.dart';
import 'package:theta_api_intro_tutorial/gui_components/button_templates/button_group.dart';
import 'package:theta_api_intro_tutorial/gui_components/button_templates/request_button.dart';
import 'package:theta_api_intro_tutorial/system/get_documents_path.dart';
import 'package:theta_api_intro_tutorial/system/get_pictures_path.dart';

class SystemGroup extends StatelessWidget {
  const SystemGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var buttonList = [
      RequestButton(
        apiRequest: getDocumentsPath,
        label: 'Windows Documents Path',
        description: 'show documents directory on Windows',
      ),
      RequestButton(
        apiRequest: getPicturesPath,
        label: 'Windows Pictures Path',
        description: 'show pictures directory on Windows',
      ),
    ];
    return ButtonGroup(
        color: Colors.pink[50],
        buttonList: buttonList,
        groupLabel: 'Windows System');
  }
}
