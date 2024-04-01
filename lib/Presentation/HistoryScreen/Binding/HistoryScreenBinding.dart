import 'package:get/get.dart';
import 'package:mimax/Presentation/HistoryScreen/Controller/HistoryScreenController.dart';

class HistoryScreenBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => HistoryScreenController());
  }
}