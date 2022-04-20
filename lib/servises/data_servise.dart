
import 'dart:convert';
import 'dart:io';

class DataServise{

  Directory directory = Directory(Directory.current.path + "\\assets\\data");

  // File
  late File file;


  Future<void>init() async{
    // directory.exists();
    bool isDerectoryCreated = await directory.exists();
    if(!isDerectoryCreated){
      await directory.create();
    }
    file = File(directory.path + '\\data.json');
    bool isFileCreated = await file.exists();
    if(!isFileCreated){
     await file.create();
    }
  }

  Future<bool> storeString({required String key, required String value}) async {
    String source = await file.readAsString();

    Map<String, dynamic> dataBase;
    if (source.isEmpty) {
      dataBase = {};
    } else {
      dataBase = jsonDecode(source);
    }

    bool result = false;
    dataBase.addAll({key: value});
    source = jsonEncode(dataBase);
    file.writeAsString(source).whenComplete(() => result = true).catchError((
        _) {
      result = false;
    });
    return result;
  }
}