import 'package:get/get.dart';

class CameraControllerX extends GetxController {
  bool flashOn = false;

  void changeFlash() {
    if (flashOn) {
      flashOn = false;
    } else {
      flashOn = true;
    }
    update();
  }
}
