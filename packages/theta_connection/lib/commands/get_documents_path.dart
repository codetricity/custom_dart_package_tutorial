import 'dart:io';

import 'package:path_provider/path_provider.dart';

Future<String> getDocumentsPath() async {
  Directory docDir = await getApplicationDocumentsDirectory();

  return docDir.path;
}
