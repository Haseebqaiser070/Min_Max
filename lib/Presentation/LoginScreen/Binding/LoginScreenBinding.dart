import 'package:get/get.dart';
import 'package:mimax/Presentation/LoginScreen/Controller/LoginScreenController.dart';

class LoginScreenBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => LoginScreenController());
  }
}