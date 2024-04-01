import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../HomeScreenWidgets/HomeScreenWidgets.dart';


class HomeScreenController extends GetxController{
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  String dd = "lskdjf";
  RxInt selectCarIndex = 0.obs;

  RxBool viewCarPrice = false.obs;
}