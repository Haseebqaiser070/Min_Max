import 'package:get/get.dart';
import 'package:mimax/Presentation/InspectionScreen/Controller/InspectionScreenController.dart';

class InspectionScreenBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => InspectionScreenController());
  }
}