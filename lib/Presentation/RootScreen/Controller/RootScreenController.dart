import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:mimax/Presentation/HomeScreen/View/HomeScreen.dart';
import 'package:mimax/Presentation/Notifications/View/Notifications.dart';
import 'package:mimax/Presentation/SettingScreen/View/SettingScreen.dart';
import '../../VehicleForSale/View/VehicleForSale.dart';


class RootScreenController extends GetxController{

  RxInt currentPage = 0.obs;
  RxList<Widget> pages = [
    HomeScreen(),
    Notifications(),
    VehicleForSale(),
    SettingScreen(),
  ].obs;
}