
import 'dart:io';
import 'package:note_app/servises/io_servise.dart';
import 'package:note_app/servises/io_servise.dart';
import 'package:note_app/servises/lang_servise.dart';
import 'package:note_app/servises/ext_servise.dart';
void main()async {
 // Nasibali, [4/20/2022 3:10 PM]
  Directory directory = Directory(Directory.current.path + "\\assets");
  Directory subDirectory = Directory(directory.path + "\\files");
  bool isCreated = await directory.exists();
  bool isCreatedSub = await subDirectory.exists();

  if(!isCreated) {
  directory.create().whenComplete(() => subDirectory.create());
  } else if(!isCreatedSub) {
  subDirectory.create();
  }

}
