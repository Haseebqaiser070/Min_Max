import 'package:get/get.dart';
import 'package:mimax/Presentation/VehicleRepairDetail/Controller/VehicleRepairDetailController.dart';

class VehicleRepairDetailBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => VehicleRepairDetailController());
  }
}