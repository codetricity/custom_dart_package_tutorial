import 'dart:typed_data';

import 'package:flutter/material.dart';

class ResponseNotifier extends ChangeNotifier {
  String _responseWindowText = 'API Response Window';
  String get responseWindowText => _responseWindowText;
  void updateResponseWindowText(responseWindowText) {
    _responseWindowText = responseWindowText;
    notifyListeners();
  }

  // list of thumbnails
  List<Uint8List> _thumbList = [];
  List<Uint8List> get thumbList => _thumbList;
  void updateThumbList(thumbList) {
    _thumbList = thumbList;
    notifyListeners();
  }
}
