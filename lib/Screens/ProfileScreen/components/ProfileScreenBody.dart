import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfileScreenBody extends StatefulWidget {
  const ProfileScreenBody({super.key});

  @override
  State<ProfileScreenBody> createState() => _ProfileScreenBodyState();
}

class _ProfileScreenBodyState extends State<ProfileScreenBody> {
  final image = Image.asset('assets/Images/My project.png');
  List<Map<String, dynamic>> data = [
    {
      'tool': 'Password',
      'icon': CupertinoIcons.lock,
    },
    {
      'tool': 'Email Address',
      'icon': CupertinoIcons.envelope,
    },
    {
      'tool': 'Fingerprint',
      'icon': CupertinoIcons.barcode_viewfinder,
    },
    {
      'tool': 'Support',
      'icon': Icons.phone_in_talk,
    },
    {
      'tool': 'Sign Out',
      'icon': Icons.logout,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(5.w, 5.h, 5.w, 0),
          height: 38.h,
          width: 100.w,
          decoration: BoxDecoration(
            color: HexColor('#6d69f0'),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Profile',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      height: 4.h,
                      width: 23.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: HexColor('#8480f2'),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Text(
                          'Edit Profile',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 15.h,
                        width: 15.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          height: 15.h,
                          width: 15.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: image,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    'John Doe',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'ID: 123456789',
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        ListView.builder(
          padding: const EdgeInsets.all(20),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Column(
                children: [
                  Container(
                    height: 8.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      color: HexColor('#e5e3f9'),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 2.w,
                            ),
                            Container(
                              height: 7.h,
                              width: 18.w,
                              decoration: BoxDecoration(
                                color: HexColor('#c9c7f9'),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(
                                data[index]['icon'],
                                color: HexColor('#8480f2'),
                              ),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Text(
                              data[index]['tool'],
                              style: GoogleFonts.poppins(
                                color: HexColor('#8480f2'),
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: HexColor('#8480f2'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                ],
              ),
              // child: ListTile(
              //   contentPadding: EdgeInsets.all(7),
              //   tileColor: HexColor('#e5e3f9'),
              //   title: Text(
              //     data[index]['tool'],
              //   ),
              //   leading: Container(
              //     height: 10.h,
              //     width: 10.h,
              //     decoration: BoxDecoration(
              //       color: HexColor('#c9c7f9'),
              //       borderRadius: BorderRadius.circular(100),
              //     ),
              //     child: Icon(
              //       data[index]['icon'],
              //       color: HexColor('#8480f2'),
              //     ),
              //   ),
              // ),
              onTap: () {},
            );
          },
          itemCount: 5,
        ),
      ],
    );
  }
}
