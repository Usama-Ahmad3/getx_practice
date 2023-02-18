import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 1.obs;
  RxDouble opacity = .4.obs;
  RxBool valu = false.obs;
  increamentCounter() {
    counter.value++;
  }

  setOpacity(double value) {
    opacity.value = value;
  }

  setSwich(bool value) {
    valu.value = value;
  }
}
