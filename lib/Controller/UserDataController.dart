import 'package:get/get.dart';

class UserDataController extends GetxController {
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

  void addPrescription(Map<String, dynamic> prescription) {
    try {
      prescriptions.add(prescription);
      update();
    } catch (e) {
      print(e);
    }
  }
}
