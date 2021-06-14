import 'package:get/get.dart';
import 'package:test/Controller/formController.dart';
import 'package:test/Controller/userDataController.dart';

class ControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FormController());
    Get.lazyPut(() => UserDataController());
  }
}