import 'package:get/get.dart';

import '../../../App_Routes/Routes.dart';

class LandingScreen3Controller extends GetxController{

  void navigateToNext(){
    Get.toNamed(Routes.LoginOption);
  }
}