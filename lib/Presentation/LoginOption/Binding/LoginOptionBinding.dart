import 'package:get/get.dart';
import '../Controller/LoginOptionController.dart';

class LoginOptionBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => LoginOptionController());
  }
}