import 'package:flutter/material.dart';
import 'package:theta_api_intro_tutorial/gui_components/button_templates/button_group.dart';
import 'package:theta_api_intro_tutorial/gui_components/button_templates/request_button.dart';
import 'package:theta_connection/theta_connection.dart';

class NetworkTests extends StatelessWidget {
  const NetworkTests({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var buttonList = [
      RequestButton(
        apiRequest: jsonPlaceholder,
        label: 'JSON Placeholder',
        description:
            'fake data from Internet API using GET. Test of http API code.',
      ),
      RequestButton(
          apiRequest: brokenPath,
          label: 'broken path',
          description: 'broken URI to test error handling'),
    ];
    return ButtonGroup(
        color: Colors.grey[200],
        buttonList: buttonList,
        groupLabel: 'network tests');
  }
}
