import 'package:get/get.dart';

class MedLogController extends GetxController {
  int medCount = 1;
  String? name;
  bool morning = false;
  bool afternoon = false;
  bool night = false;

  void setName(String? value) {
    name = value;
    update();
  }

  void setMorning(bool value) {
    morning = value;
    update();
  }

  void setAfternoon(bool value) {
    afternoon = value;
    update();
  }

  void setNight(bool value) {
    night = value;
    update();
  }

  void incrementMedCount() {
    medCount++;
    update();
  }

  void decrementMedCount() {
    medCount--;
    update();
  }
}
