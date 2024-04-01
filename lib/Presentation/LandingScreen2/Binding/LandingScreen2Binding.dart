import 'package:get/get.dart';

import '../Controller/LandingScreen2Controller.dart';
class LandingScreen2Binding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => LandingScreen2Controller());
  }
}