import 'package:get/get.dart';

import '../../../App_Routes/Routes.dart';

class LandingScreen2Controller extends GetxController{

  void navigateToNext(){
    Get.toNamed(Routes.LandingScreen3);
  }
}