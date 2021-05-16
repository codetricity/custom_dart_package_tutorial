import 'package:http/http.dart' as http;

const Map emptyBody = {};
String domain = '192.168.1.1';

Future<String> request(Uri uri,
    {String method = 'post', Map<dynamic, dynamic> body = emptyBody}) async {
  Future<String> responseBody =
      Future<String>.value('did not receive response');
  try {
    http.Response? response;
    if (method == 'get') {
      response = await http.get(uri);
    } else {
      response = await http.post(uri, body: body);
    }

    var statusCode = response.statusCode;
    if (statusCode == 200) {
      responseBody = Future<String>.value(response.body);
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
