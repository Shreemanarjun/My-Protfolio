import 'package:get/get.dart';

import 'Controllers/ThemeController.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(ThemeController());
  }
}
