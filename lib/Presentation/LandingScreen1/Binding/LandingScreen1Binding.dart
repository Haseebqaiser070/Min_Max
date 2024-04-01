import 'package:get/get.dart';

import '../Controller/LandingScreen1Controller.dart';
class LandingScreen1Binding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => LandingScreen1Controller());
  }
}