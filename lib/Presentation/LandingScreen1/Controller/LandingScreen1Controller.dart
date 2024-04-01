import 'package:get/get.dart';
import 'package:mimax/App_Routes/Routes.dart';

class LandingScreen1Controller extends GetxController{


  void navigateToNext(){
    Get.toNamed(Routes.LandingScreen2);
  }
}