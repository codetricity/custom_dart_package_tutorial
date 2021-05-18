import 'package:theta_api_intro_tutorial/system/get_documents_path.dart';

Future<String> getPicturesPath() async {
  try {
    var documentsPath = await getDocumentsPath();
    var pathList = documentsPath.split("\\");
    pathList[pathList.length - 1] = 'Pictures';
    var picturePath = pathList.join('\\');
    return picturePath;
  } catch (error) {
    return Future.value(error.toString());
  }
}
