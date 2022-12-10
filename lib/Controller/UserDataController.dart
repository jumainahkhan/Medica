import 'package:get/get.dart';

class UserDataController extends GetxController {
  String? clinic;
  String? dname;
  String? djob;
  String? date;
  String? reasonforvisit;
  List medicine = [];

  String? medicineName;
  bool morning = false;
  bool afternoon = false;
  bool night = false;
  List<Map<String, dynamic>> prescriptions = [
    {
      'clinic': 'XYZ Clinic',
      'dname': 'Dr. John Smith',
      'djob': 'Dermatologist',
      'date': '12/12/2020',
      'reasonforvisit': 'Skin Rash ',
      'medicines': [
        {
          'name': 'Medicine1',
          'morning': 'yes',
          'afternoon': 'no',
          'night': 'yes'
        }
      ],
    },
    {
      'clinic': 'Wellness Clinic',
      'dname': 'Dr. Rita Lancaster',
      'djob': 'Orthopaedic Surgeon',
      'date': '12/12/2020',
      'reasonforvisit': 'Fracture',
      'medicines': [
        {
          'name': 'Medicine2',
          'morning': 'yes',
          'afternoon': 'no',
          'night': 'yes'
        }
      ],
    },
    {
      'clinic': 'Medsy Clinic',
      'dname': 'Dr. Piya Mitra',
      'djob': 'Gynaecologist',
      'date': '12/12/2020',
      'reasonforvisit': 'Ultrasound',
      'medicines': [
        {
          'name': 'Medicine3',
          'morning': 'yes',
          'afternoon': 'no',
          'night': 'no'
        }
      ],
    },
    {
      'clinic': 'Medal Clinic',
      'dname': 'Dr. Sanjay Malhotra',
      'djob': 'Physician',
      'date': '12/12/2020',
      'reasonforvisit': 'Fever ',
      'medicines': []
    },
  ];

  void addPrescription() {
    try {
      //TODO: Add field for dermatologist
      setDjob("Dermatologist");
      Map<String, dynamic> newPrescription = {
        'clinic': clinic,
        'dname': dname,
        'djob': djob,
        'date': date,
        'reasonforvisit': reasonforvisit,
        'medicines': medicine
      };
      print(newPrescription);
      prescriptions.add(newPrescription);
      update();
    } catch (e) {
      print(e);
    }
  }

  void setClinic(String? clinic) {
    this.clinic = clinic;
    update();
  }

  void setDname(String? dname) {
    this.dname = dname;
    update();
  }

  void setDjob(String? djob) {
    this.djob = djob;
    update();
  }

  void setDate(String? date) {
    this.date = date;
    update();
  }

  void setReasonforvisit(String? reasonforvisit) {
    this.reasonforvisit = reasonforvisit;
    update();
  }

  void setMedicine(Map<String, dynamic> medicine) {
    print(medicine);
    print(medicine.entries);
    medicine.addEntries(medicine.entries);
    update();
  }
}
