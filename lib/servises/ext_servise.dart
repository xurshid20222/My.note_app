import 'dart:io';

import 'package:note_app/servises/lang_servise.dart';

import 'locals/en_US.dart';
import 'locals/ru_RU.dart';
import 'locals/uz_UZ.dart';

extension LangExt on String{
  String get tr{
      switch(LangServise.language){
        case Language.en: return enUS[this]?? this;
        case Language.ru: return ruRU[this]?? this;
        case Language.uz: return uzUZ[this]?? this;
      }
    }
  }

//   int get  toInt{
//      return int.tryParse(this) ?? 0;
//   }
//
// double get  toDouble{
//   return double.tryParse(this) ?? 0;
// }
//
// bool get  toBool{
//   return bool.tryParse(this) ?? 0;
// }


