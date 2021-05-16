part of '../theta_connection.dart';

Future<String> brokenPath() async {
  // broken path to check for error handling. correct path is todos
  Uri uri = Uri.https('jsonplaceholder.typicode.com', 'todo');

  return await theta.request(uri, method: 'get');
}
