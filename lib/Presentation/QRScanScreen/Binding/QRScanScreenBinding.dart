import 'package:get/get.dart';
import '../Controller/QRScanScreenController.dart';

class QRScanScreenBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => QRScanScreenController());
  }
}