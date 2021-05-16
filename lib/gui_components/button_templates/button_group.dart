import 'package:flutter/material.dart';
import 'package:theta_api_intro_tutorial/gui_components/button_templates/request_button.dart';
import 'package:theta_connection/theta_connection.dart';

class ButtonGroup extends StatelessWidget {
  const ButtonGroup({
    Key? key,
    required this.color,
    required this.buttonList,
    required this.groupLabel,
  }) : super(key: key);

  final Color? color;
  final List<RequestButton> buttonList;
  final String groupLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 2,
              child: Text(
                groupLabel,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: buttonList,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
