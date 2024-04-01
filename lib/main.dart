import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mimax/Services/LanguageService.dart';
import 'package:mimax/Services/ThemeService.dart';
import 'package:mimax/Utils/LanguageController/LanguageController.dart';

import 'App_Routes/AppPages.dart';
import 'App_Routes/Routes.dart';
import 'Utils/App_Theme/AppTheme.dart';

Future initServices()async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await Get.putAsync(() => LanguageServide().init());
  await Get.putAsync(() => ThemeService().init());
}
late Locale appLocale;
late ThemeMode appThemeMode;

void main() async{
  await initServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.SplashScreen,
      getPages: AppPages.routes,
      themeMode: appThemeMode,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      locale: appLocale,
      translations: LanguageController(),
    );
  }
}