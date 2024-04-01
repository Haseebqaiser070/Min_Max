import 'package:get/get.dart';

import '../Controller/NotificationsController.dart';

class NotificationsBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => NotificationsController());
  }
}