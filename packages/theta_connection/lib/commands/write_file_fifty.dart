part of '../theta_connection.dart';

Future<String> writeFileFifty() async {
  var fileInfo = await listFilesFifty();
  var fileMap = jsonDecode(fileInfo);
  List<String> urlList = [];
  var entriesList = fileMap['results']['entries'];

  for (var entry in entriesList) {
    urlList.add(entry['fileUrl']);
  }

  String response = 'error writing file';

  List<String> fileNameList = [];

  for (String url in urlList) {
    List filePath = url.split('/');
    String imageName = filePath.last;
    filePath.removeRange(0, 3);
    var thetaImagePath = filePath.join('/');
    fileNameList.add(imageName);
    print(imageName);

    Uri uri = Uri.http(theta.domain, thetaImagePath);

    try {
      print('starting $imageName download');
      final imageData = await http.get(uri);
      print('got $imageName from camera');

      var picturesPath = await getPicturesPath();

      // create file theta_images folder if it does not exist

      var thetaImage = await File(join(picturesPath, 'theta_images', imageName))
          .create(recursive: true);

      await thetaImage.writeAsBytes(imageData.bodyBytes);

      response = 'wrote  to disk \n' + fileNameList.toString();
      print('wrote $imageName to local storage');
    } catch (error) {
      response = error.toString();
      break;
    }
  }
  print('finished');
  print(response);

  return Future.value(response);
}
