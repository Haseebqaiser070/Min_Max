import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mimax/Presentation/HomeScreen/Controller/HomeScreenController.dart';
import 'package:mimax/Presentation/Notifications/View/Notifications.dart';
import 'package:mimax/Presentation/RootScreen/Controller/RootScreenController.dart';
import 'package:mimax/Presentation/SettingScreen/Controller/SettingScreenController.dart';
import 'package:mimax/Presentation/SettingScreen/View/SettingScreen.dart';
import 'package:mimax/Presentation/VehicleForSale/Controller/VehicleForSaleController.dart';
import 'package:mimax/Presentation/VehicleForSale/View/VehicleForSale.dart';

class RootScreenBinding extends Bindings{

  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => RootScreenController());
    Get.lazyPut(() => HomeScreenController());
    Get.lazyPut(() => SettingScreenController());
    Get.lazyPut(() => VehicleForSaleController());
    Get.lazyPut(() => Notifications());
  }
}