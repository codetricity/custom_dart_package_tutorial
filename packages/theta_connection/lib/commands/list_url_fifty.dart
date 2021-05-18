part of '../theta_connection.dart';

Future<String> listUrlFifty() async {
  var fileInfo = await listFilesFifty();
  var fileMap = jsonDecode(fileInfo);
  List<String> urlList = [];
  var entriesList = fileMap['results']['entries'];

  for (var entry in entriesList) {
    urlList.add(entry['fileUrl']);
  }

  String urlString = urlList.toString();

  return urlString;
}
