import 'package:get/get.dart';
import 'package:my_test/controllers/bottom_icons_controller.dart';
import 'package:my_test/controllers/controllers.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(TabBar_controller());
    Get.lazyPut(() => Bottom_Icons_Controller());
  }
}
