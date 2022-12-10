import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PrescriptionDetails extends StatefulWidget {
  const PrescriptionDetails({super.key});

  @override
  State<PrescriptionDetails> createState() => _PrescriptionDetailsState();
}

class _PrescriptionDetailsState extends State<PrescriptionDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: HexColor('#f0f2f0'),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            const Center(
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/Images/My project.png'),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              'Doctor Name',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              'Rs. 100',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 6, 0, 10),
              height: 5.h,
              width: 50.w,
              decoration: BoxDecoration(
                color: HexColor('#6d69f0'),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Reason for Visit',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              'Date of Visit',
              style: GoogleFonts.poppins(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Column(
              children: [
                Container(
                  height: 8.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.bandage,
                          size: 40,
                          color: HexColor('#6d69f0'),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          'Medicine Details',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                    height: 35.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 2.h),
                        const Text('Medicine 1 '),
                        const Text('0-0-1, BF, 5 days'),
                        SizedBox(height: 2.h),
                        const Text('Medicine 1 '),
                        const Text('0-0-1, BF, 5 days'),
                        SizedBox(height: 2.h),
                        const Text('Medicine 1 '),
                        const Text('0-0-1, BF, 5 days'),
                        SizedBox(height: 2.h),
                        const Text('Medicine 1 '),
                        const Text('0-0-1, BF, 5 days'),
                        SizedBox(height: 2.h),
                        const Text('Notes:'),
                      ],
                    )),
                SizedBox(height: 2.h),
                Container(
                  height: 8.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.doc_text,
                          size: 40,
                          color: HexColor('#6d69f0'),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          'Prescription',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 2, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(CupertinoIcons.eye),
                              Text(
                                'View',
                                style: GoogleFonts.poppins(
                                    color: Colors.grey,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 2, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(CupertinoIcons.down_arrow),
                              Text(
                                'Download',
                                style: GoogleFonts.poppins(
                                    color: Colors.grey,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
