import 'package:get/get.dart';
import 'package:mimax/Presentation/HomeScreen/Controller/HomeScreenController.dart';

class HomeScreenBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => HomeScreenController());
  }
}