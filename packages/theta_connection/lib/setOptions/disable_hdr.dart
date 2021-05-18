part of '../theta_connection.dart';

Future<String> disableHdr() async {
  Uri uri = Uri.http(theta.domain, '/osc/commands/execute');
  var body = {
    'name': 'camera.setOptions',
    'parameters': {
      'options': {'_filter': 'off'}
    }
  };
  return await theta.request(uri, body: body);
}
