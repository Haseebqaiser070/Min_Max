import 'package:get/get.dart';

import '../Controller/SplashScreenController.dart';
class SplashScreenBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => SplashScreenController());
  }
}