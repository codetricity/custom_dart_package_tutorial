part of '../theta_connection.dart';

Future<String> listUrlLast() async {
  var fileInfo = await listFilesLast();
  var fileMap = jsonDecode(fileInfo);
  String url = fileMap['results']['entries'][0]['fileUrl'];
  print(url);

  return url;
}
