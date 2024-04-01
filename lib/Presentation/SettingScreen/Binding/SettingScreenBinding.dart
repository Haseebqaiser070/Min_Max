import 'package:get/get.dart';
import 'package:mimax/Presentation/SettingScreen/Controller/SettingScreenController.dart';

class SettingScreenBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => SettingScreenController());
  }
}