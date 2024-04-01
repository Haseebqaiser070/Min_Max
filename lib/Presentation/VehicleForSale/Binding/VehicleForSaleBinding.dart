import 'package:get/get.dart';
import 'package:mimax/Presentation/VehicleForSale/Controller/VehicleForSaleController.dart';

class VehicleForSaleBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => VehicleForSaleController());
  }
}