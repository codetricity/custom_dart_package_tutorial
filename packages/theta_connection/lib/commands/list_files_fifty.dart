part of '../theta_connection.dart';

/// type is all, image, video
/// entryCount is an integer
/// maxThumbSize must be included.  Only works with one file on SC2
Future<String> listFilesFifty() async {
  Uri uri = Uri.http(theta.domain, '/osc/commands/execute');
  var body = {
    'name': 'camera.listFiles',
    'parameters': {
      'fileType': 'image',
      'entryCount': 50,
      'maxThumbSize': 0,
    }
  };
  return await theta.request(uri, body: body);
}
