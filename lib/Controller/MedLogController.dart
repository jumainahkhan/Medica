import 'package:get/get.dart';

class MedLogController extends GetxController {
  int medCount = 1;

  void incrementMedCount() {
    medCount++;
    update();
  }

  void decrementMedCount() {
    medCount--;
    update();
  }
}
