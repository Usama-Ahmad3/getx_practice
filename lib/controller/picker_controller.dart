import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  RxString imagePath = ''.obs;
  Future getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      imagePath.value = image.path.toString();
    } else {
      Get.snackbar('Image Picking', 'Image Is Not Picked');
    }
  }
}
