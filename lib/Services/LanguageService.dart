import 'dart:ui';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../main.dart';



class LanguageServide extends GetxService{

  Future<LanguageServide> init()async{
    await setupLocalLanguage();
    return this;
  }

  Future setupLocalLanguage()async{
    final getStorage = GetStorage();
    final language = await  getStorage.read("language");
    print(language);
    if(language == null){
      print("1");
      appLocale = Locale('en', 'GB');
    }
    else if(language == "English"){
      print("2");
      appLocale = Locale('en', 'GB');
    }
    else if(language == "German"){
      print("3");
      appLocale = Locale('de', 'DE');
    }
  }
}