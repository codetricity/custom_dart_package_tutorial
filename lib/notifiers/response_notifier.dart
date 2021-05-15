import 'package:flutter/material.dart';

class ResponseNotifier extends ChangeNotifier {
  String _responseWindowText = 'API Response Window';
  String get responseWindowText => _responseWindowText;
  void updateResponseWindowText(responseWindowText) {
    _responseWindowText = responseWindowText;
    notifyListeners();
  }
}
