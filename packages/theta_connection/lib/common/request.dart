import 'dart:convert';

import 'package:http/http.dart' as http;

// the body needs to be encoded as JSON
const Map emptyBody = {};
String domain = '192.168.1.1';
// http package accepts a Map for the headers
var headers = {'Content-Type': 'application/json;charset=utf-8'};

Future<String> request(Uri uri,
    {String method = 'post', Map<dynamic, dynamic> body = emptyBody}) async {
  Future<String> responseBody =
      Future<String>.value('did not receive response');
  try {
    http.Response? response;
    if (method == 'get') {
      response = await http.get(uri);
    } else {
      response = await http.post(uri, headers: headers, body: jsonEncode(body));
    }

    var statusCode = response.statusCode;
    if (statusCode == 200) {
      JsonEncoder encoder = JsonEncoder.withIndent('  ');

      var responseJson = jsonDecode(response.body);
      responseBody = Future<String>.value(encoder.convert(responseJson));
    } else {
      var errorString = 'network error';
      switch (statusCode) {
        case 404:
          errorString =
              '404 - not found. Likely an error in the URI embedded in the code';
          break;
        default:
          errorString = 'network http error code $statusCode';
          break;
      }
      responseBody = Future<String>.value(errorString);
    }
  } catch (error) {
    responseBody = Future<String>.value(error.toString());
  }
  return responseBody;
}
