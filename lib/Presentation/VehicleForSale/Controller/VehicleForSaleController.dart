import 'package:get/get.dart';

class VehicleForSaleController extends GetxController{


  RxString currentSaleType = "sale".obs;
  List saleOption = ["sale","trade"];
  RxBool isGridView = false.obs;
}