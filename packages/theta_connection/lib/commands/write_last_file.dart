part of '../theta_connection.dart';

Future<String> writeLastFile() async {
  String response = 'error writing file';
  String imagePath =
      'files/thetasc26c21a247d9055838792badc5/100RICOH/R0011956.JPG';
  Uri uri = Uri.http(theta.domain, imagePath);

  try {
    print('starting image download');
    final imageData = await http.get(uri);
    print('got image from camera');

    var picturesPath = await getPicturesPath();

    // create file theta_images folder if it does not exist

    var thetaImage =
        await File(join(picturesPath, 'theta_images', 'theta_test.jpg'))
            .create(recursive: true);

    await thetaImage.writeAsBytes(imageData.bodyBytes);

    response = 'wrote file';
    print('wrote file to local storage');
  } catch (error) {
    response = error.toString();
  }
  return Future.value(response);
}
