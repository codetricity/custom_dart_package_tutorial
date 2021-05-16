part of '../theta_connection.dart';

Future<String> state() async {
  Uri uri = Uri.http(theta.domain, '/osc/state');

  return await theta.request(uri);
}
