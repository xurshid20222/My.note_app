


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


    // DataServise dataServise = DataServise();
    // await dataServise.init();
    // write('Qaysi malumot kerak:');
    // String text = read();
    // dataServise.
    //
    DataServise dataService = DataServise();
    await dataService.init();

    write('password');
    String password = read();
    bool  result = await dataService.storeString(key: 'password', value: password);

    if(result){
      writeln('password muvaffaqatli yaratildi');
    }else{
      writeln('Iltimos kiyen urinib kuring');
    }



    writeln("Qaysi ma'lumot kerak: ");
    String text = read();

    dataService.readData(key: text)?.then((value) {
      writeln(value);
    });

  }






