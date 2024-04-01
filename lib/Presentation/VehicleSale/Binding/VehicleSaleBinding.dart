import 'package:get/get.dart';
import 'package:mimax/Presentation/VehicleSale/Controller/VehicleSaleController.dart';

class VehicleSaleBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => VehicleSaleController());
  }
}