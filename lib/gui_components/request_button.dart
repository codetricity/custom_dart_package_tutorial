import 'package:flutter/material.dart';
import 'package:theta_api_intro_tutorial/notifiers/response_notifier.dart';
import 'package:provider/provider.dart';

class RequestButton extends StatelessWidget {
  const RequestButton({Key? key, required this.apiRequest, required this.label})
      : super(key: key);

  final Function apiRequest;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        var response = await apiRequest();
        context.read<ResponseNotifier>().updateResponseWindowText(response);
      },
      child: Text(
        label,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
