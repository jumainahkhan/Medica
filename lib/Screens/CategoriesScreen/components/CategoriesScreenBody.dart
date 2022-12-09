import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CategoriesScreenBody extends StatefulWidget {
  const CategoriesScreenBody({super.key});

  @override
  State<CategoriesScreenBody> createState() => _CategoriesScreenBodyState();
}

class _CategoriesScreenBodyState extends State<CategoriesScreenBody> {
  final image = Image.asset('assets/Images/My project.png');
  List<Map<String, dynamic>> colors = [
    {
      'primary': HexColor('#abdac8'),
      'secondary': HexColor('#d4ebe3'),
    },
    {
      'primary': HexColor('#fb6e5d'),
      'secondary': HexColor('#fcd1cb'),
    },
    {
      'primary': HexColor('#293b61'),
      'secondary': HexColor('#e5e3f9'),
    },
    {
      'primary': HexColor('#fb991e'),
      'secondary': HexColor('#fde9d0'),
    }
  ];
  List<Map<String, dynamic>> prescriptions = [
    {
      'clinic': 'XYZ Clinic',
      'dname': 'Dr. John Smith',
      'djob': 'Dermatologist',
      'date': '12/12/2020',
      'reasonforvisit': 'Skin Rash and butt rash',
    },
    {
      'clinic': 'Wellness Clinic',
      'dname': 'Dr. Rita Lancaster',
      'djob': 'Orthopaedic Surgeon',
      'date': '12/12/2020',
      'reasonforvisit': 'Skin Rash',
    },
    {
      'clinic': 'Medsy Clinic',
      'dname': 'Dr. Piya Mitra',
      'djob': 'Gynaecologist',
      'date': '12/12/2020',
      'reasonforvisit': 'Skin Rash',
    },
    {
      'clinic': 'Medal Clinic',
      'dname': 'Dr. Sanjay Malhotra',
      'djob': 'Gynaecologist',
      'date': '12/12/2020',
      'reasonforvisit': 'Skin Rash ',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor('#f0f2f0'),
        appBar: AppBar(
          title: Text(
            'Prescriptions',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: HexColor('#6d69f0'),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 20.h,
                  width: double.infinity,
                  child: GestureDetector(
                      child: Row(
                    children: [
                      Container(
                        width: 3.w,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 205, 210, 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(187, 222, 251, 1),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Container(
                                        padding:
                                            const EdgeInsets.only(right: 13.0),
                                        child: Text(
                                          prescriptions[index]
                                              ['reasonforvisit'],
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.poppins(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Icon(
                                      Icons.chevron_right,
                                      size: 30,
                                    )
                                  ],
                                ),
                                Text(
                                  prescriptions[index]['date'],
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey,
                                  ),
                                ),
                                ListTile(
                                  leading: CircleAvatar(
                                    radius: 20,
                                    foregroundImage: image.image,
                                  ),
                                  title: Text(
                                    prescriptions[index]['dname'],
                                    style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        prescriptions[index]['djob'],
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        prescriptions[index]['clinic'],
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
                ),
              );
            },
            itemCount: 2,
          ),
        ),
      ),
    );
  }
}
