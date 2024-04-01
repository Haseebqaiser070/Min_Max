import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mimax/main.dart';

class ThemeService extends GetxService{

  Future<ThemeService> init()async{
    await setupLocalTheme();
    return this;
  }


  Future setupLocalTheme()async{
    final getStorage = GetStorage();
    final theme = await  getStorage.read("theme");
    print(theme);
    if(theme == null){
      appThemeMode = ThemeMode.light;
    }
    else if(theme == "dark"){
      appThemeMode = ThemeMode.dark;
    }
    else if(theme == "light"){
      appThemeMode = ThemeMode.light;
    }
  }
}