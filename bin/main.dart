


  import 'dart:io';
  import 'package:note_app/servises/data_servise.dart';
import 'package:note_app/servises/io_servise.dart';
  import 'package:note_app/servises/io_servise.dart';
  import 'package:note_app/servises/lang_servise.dart';
  import 'package:note_app/servises/ext_servise.dart';
  void main()async {
    // // Nasibali, [4/20/2022 3:10 PM]
    // Directory directory = Directory(Directory.current.path + "\\assets\\files");
    // write('fayl nomini kirit');
    // String fileName  = read();
    // File file = File(directory.path + '\\$fileName.txt');
    // // await file.create();
    // //
    // // file.writeAsStringSync('Bu file yana file');
    // bool isFileCreated = await file.exists();
    // if(isFileCreated){
    //   writeln('Bu file oldin yaratilgan');
    // }else{
    //   writeln('Tangi faile yaratildi');
    //   await file.create();
    // }
    //
    // String data = await file.readAsString();
    // write('faylga malumot kiriting');
    // data += read();
    // file.writeAsStringSync(data);


    DataServise dataServise = DataServise();
    await dataServise.init();

    write('password');
    String password = read();
    bool  result = await dataServise.storeString(key: 'password', value: 'value');

    if(result){
      writeln('password muvaffaqatli yaratildi');
    }else{
      writeln('Iltimos kiyen urinib kuring');
    }

  }




