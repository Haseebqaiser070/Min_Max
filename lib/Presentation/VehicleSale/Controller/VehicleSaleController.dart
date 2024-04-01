import 'package:get/get.dart';

class VehicleSaleController extends GetxController{

  RxString currentSaleType = "sale".obs;
  List saleOption = ["sale","trade"];

  RxList images = ["add"].obs;


  RxString vehicleTypeValue = "Passenger Car".obs;
  List<String> vehicleTypeItems = ["Passenger Car","Public Car", "Transport Wagon"];
}