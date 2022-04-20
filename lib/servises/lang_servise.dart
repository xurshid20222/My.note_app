
import 'locals/en_US.dart';
import 'locals/ru_RU.dart';
import 'locals/uz_UZ.dart';

enum Language{en, ru, uz}

class LangServise{
  // feilds
  static Language _language = Language.en;


  
  // seter

  static set language(Language language){
    _language = language;
  }
  
  // get

 static Language get language => _language;

}