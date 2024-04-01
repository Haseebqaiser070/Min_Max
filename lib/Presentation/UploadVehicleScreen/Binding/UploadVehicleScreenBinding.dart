import 'package:get/get.dart';
import 'package:mimax/Presentation/UploadVehicleScreen/Controller/UploadVehicleScreenController.dart';

class UploadVehicleScreenBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => UploadVehicleScreenController());
  }
}