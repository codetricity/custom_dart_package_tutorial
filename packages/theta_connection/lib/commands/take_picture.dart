part of '../theta_connection.dart';

Future<String> takePicture() async {
  Uri uri = Uri.http(theta.domain, '/osc/commands/execute');
  var body = {'name': 'camera.takePicture'};
  return await theta.request(uri, body: body);
}
