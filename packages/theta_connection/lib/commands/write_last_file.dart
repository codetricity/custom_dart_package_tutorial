part of '../theta_connection.dart';

Future<String> writeLastFile() async {
  String response = 'error writing file';
  String lastFileUrl = await listUrlLast();
  List lastFilePath = lastFileUrl.split('/');
  String imageName = lastFilePath.last;
  lastFilePath.removeRange(0, 3);
  var thetaImagePath = lastFilePath.join('/');
  print(imageName);

  Uri uri = Uri.http(theta.domain, thetaImagePath);

  try {
    print('starting image download');
    final imageData = await http.get(uri);
    print('got image from camera');

    var picturesPath = await getPicturesPath();

    // create file theta_images folder if it does not exist

    var thetaImage = await File(join(picturesPath, 'theta_images', imageName))
        .create(recursive: true);

    await thetaImage.writeAsBytes(imageData.bodyBytes);

    response = 'wrote file';
    print('wrote file to local storage');
  } catch (error) {
    response = error.toString();
  }
  return Future.value(response);
}
