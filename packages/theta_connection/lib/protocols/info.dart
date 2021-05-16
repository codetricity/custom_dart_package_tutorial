part of '../theta_connection.dart';

Future<String> info() async {
  Uri uri = Uri.https(theta.domain, 'osc/info');

  return await theta.request(uri, method: 'get');
}
