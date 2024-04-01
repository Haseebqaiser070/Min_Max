import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mimax/Utils/LanguageController/LanguageController.dart';
import 'package:mimax/main.dart';

import '../../../Utils/App_Theme/AppTheme.dart';

class SettingScreenController extends GetxController{
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getAppLanguage();
    getAppTheme();
  }

  RxBool isGerman = false.obs;
  RxBool isDark = false.obs;


  Future getAppLanguage()async{
    if(appLocale == Locale('de', 'DE')){
      isGerman.value = true;
    }
    else{
      isGerman.value = false;
    }

  }

  Future getAppTheme()async{
    if(appThemeMode == ThemeMode.dark){
      isDark.value = true;
    }
    else{
      isDark.value = false;
    }

  }

  changeTheme()async{
    if(isDark.value){
      Get.changeThemeMode(ThemeMode.dark);
      await GetStorage().write('theme', "dark");
    }
    else{
      Get.changeThemeMode(ThemeMode.light);
      await GetStorage().write('theme', "light");
    }
  }

  changeLanguage(){
    LanguageController languageController = LanguageController();
    if(isGerman.value){
      languageController.changeAppLanguage("German");
    }
    else{
      languageController.changeAppLanguage("English");
    }
  }

}