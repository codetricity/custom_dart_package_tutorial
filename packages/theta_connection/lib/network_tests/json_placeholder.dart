part of '../theta_connection.dart';

Future<String> jsonPlaceholder() async {
  // working URI
  Uri uri = Uri.https('jsonplaceholder.typicode.com', 'todos/1');

  // broken URI to check for error handling
  // Uri uri = Uri.https('jsonplaceholder.typicode.com', 'todo');

  return await theta.request(uri, method: 'get');
}
