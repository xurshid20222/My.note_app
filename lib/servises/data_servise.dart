
import 'dart:io';

class DataServise{

  Directory directory = Directory(Directory.current.path + "\\assets\\data");

  File file = File(directory.path + '\\$fileName.txt');


  Future<void>init() async{
    directory.exists();
  }
}