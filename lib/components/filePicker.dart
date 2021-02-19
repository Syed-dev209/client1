import 'dart:io';

import 'package:file_picker/file_picker.dart';
class PickFiles{

  Future<PlatformFile> pickTestDocuments() async {
    PlatformFile _file;
   final _result = await FilePicker.platform.pickFiles(
     type: FileType.custom,
     allowedExtensions: ['pdf','png','jpeg']
   );

    if (_result != null) {
      _file = _result.files.first;
      return _file;
    } else {
      return _file;
    }
  }
}