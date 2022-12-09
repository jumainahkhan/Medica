import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:medica/Controller/NavBarController.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_emoji/flutter_emoji.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  var parser = EmojiParser();
  var doctor = ('doctor' '👨‍⚕️');

  NavBarController navBarController = Get.put(NavBarController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(1.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const HeroIcon(HeroIcons.bars3BottomLeft),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const HeroIcon(HeroIcons.plus),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5.w, 0, 0, 3.w),
              child: Text(
                'Medica',
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5.w, 0, 5.w, 2.w),
              child: GestureDetector(
                onTap: () {
                  debugPrint('search');
                },
                child: Container(
                  height: 5.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(Icons.search),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Search',
                        style:
                            GoogleFonts.lato(color: Colors.grey, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5.w, 3.h, 5.w, 2.h),
              child: Row(
                children: [
                  Column(children: [
                    Container(
                      height: 24.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 8, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    CupertinoIcons.doc_fill,
                                    color: HexColor('#f3d39a'),
                                    size: 40,
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Text(
                                    'Prescriptions',
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '25',
                                    style: GoogleFonts.poppins(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: ElevatedButton(
                                onPressed: () {
                                  navBarController.changeIndex(1);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: HexColor('#f3d39a'),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: SizedBox(
                                  width: 70,
                                  child: Text(
                                    'See All',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Container(
                      height: 13.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              'Doctors',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '5',
                              style: GoogleFonts.poppins(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        debugPrint('clicked');
                      },
                      child: Container(
                        height: 22.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                            color: HexColor('#f3d39a'),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Icon(
                                      Icons.accessibility,
                                      size: 40,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Text(
                                      'Learn More',
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      'About Your',
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      'Medicines',
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
                  SizedBox(
                    width: 2.w,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 27.h,
                        width: 45.w,
                        decoration: BoxDecoration(
                          color: HexColor('#6d69f0'),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(11),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Today\'s Meds',
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const Icon(Icons.chevron_right,
                                      color: Colors.white, size: 25),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Paracetamol',
                                style: GoogleFonts.lato(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Text(
                                'Cetrizine',
                                style: GoogleFonts.lato(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Text(
                                'Dolo 650',
                                style: GoogleFonts.lato(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Text(
                                'Ibuprofen',
                                style: GoogleFonts.lato(
                                    color: Colors.white, fontSize: 15),
                              ),
                              const SizedBox(
                                height: 29,
                              ),
                              Center(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: SizedBox(
                                    width: 90,
                                    child: Text(
                                      'See More',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.lato(
                                        color: HexColor('#6d69f0'),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Container(
                        height: 17.h,
                        width: 45.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.bar_chart,
                                      size: 30,
                                      color: HexColor('#f3d39a'),
                                    ),
                                    Text(
                                      'My Statistics',
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Center(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: HexColor('#f3d39a'),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: SizedBox(
                                    width: 90,
                                    child: Text(
                                      'See More',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.lato(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Container(
                        height: 15.h,
                        width: 45.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                child: Text('Last Check up',
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: HexColor('#f3d39a'),
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                child: Text('09-10-2021',
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.poppins(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                child: Text('Next Check up',
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: HexColor('#f3d39a'),
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                child: Text('09-10-2021',
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.poppins(
                                      fontSize: 11,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
