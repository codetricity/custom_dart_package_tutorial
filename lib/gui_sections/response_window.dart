import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta_api_intro_tutorial/notifiers/response_notifier.dart';

class ResponseWindow extends StatelessWidget {
  const ResponseWindow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        width: double.infinity,
        color: Colors.lightBlue[100],
        child: SingleChildScrollView(
          child: Text(
            context.watch<ResponseNotifier>().responseWindowText,
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
