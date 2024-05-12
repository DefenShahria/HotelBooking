import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:jayga/data/state_holders/allpostcontroller.dart';

class ControllerBinder extends Bindings{
  @override
  void dependencies() {
    Get.put(AllpostController());
  }
}