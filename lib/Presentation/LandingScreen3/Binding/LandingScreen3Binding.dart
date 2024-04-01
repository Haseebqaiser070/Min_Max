import 'package:get/get.dart';
import '../Controller/LandingScreen3Controller.dart';

class LandingScreen3Binding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => LandingScreen3Controller());
  }
}