import 'dart:io';

import 'package:get/get.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QRScanScreenController extends GetxController{

  MobileScannerController cameraController = MobileScannerController();


  RxString imageSrc = "".obs;

}