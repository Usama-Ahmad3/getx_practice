import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList<String> fruit = ['Orange', 'Apple', 'Mango', 'Banana'].obs;
  RxList favourite = [].obs;
  remove(String value) {
    favourite.remove(value);
  }

  add(String e) {
    favourite.add(e);
  }
}
