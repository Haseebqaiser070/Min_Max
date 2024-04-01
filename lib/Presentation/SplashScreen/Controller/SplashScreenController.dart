import 'package:get/get.dart';
import 'package:mimax/App_Routes/Routes.dart';

class SplashScreenController extends GetxController{

  String appName = "MIMAX";
  String title = "MINIMALER AUFWAND. MAXIMALER GEWINN.";

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    handleScreen();
  }

  Future handleScreen()async{
    await Future.delayed(Duration(seconds: 3));
    Get.toNamed(Routes.LandingScreen1);
  }
}