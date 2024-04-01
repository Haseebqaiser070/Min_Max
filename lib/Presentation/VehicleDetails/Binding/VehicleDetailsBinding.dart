import 'package:get/get.dart';
import 'package:mimax/Presentation/VehicleDetails/Controller/VehicleDetailsController.dart';

class VehicleDetailsBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => VehicleDetailsController());
  }
}