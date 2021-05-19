part of '../theta_connection.dart';

Future<List<Uint8List>> getThumbFifty() async {
  var fileInfo = await listFilesFifty();
  var fileMap = jsonDecode(fileInfo);
  List<String> urlList = [];
  var entriesList = fileMap['results']['entries'];

  for (var entry in entriesList) {
    urlList.add(entry['fileUrl']);
  }

  List<Uint8List> thumbByteList = [];

  var client = http.Client();

  for (String url in urlList) {
    url = url + 'type=thumb';
    Uri uri = Uri.parse(url);
    try {
      final imageData = await client.get(uri);
      thumbByteList.add(imageData.bodyBytes);
    } catch (error) {
      print(error);
      break;
    }
  }
  client.close();
  return thumbByteList;
}
