import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:medica/Screens/AddManuallyScreen.dart/components/buildMedDetail.dart';
import 'package:medica/Screens/AddManuallyScreen.dart/components/buildVisitDetail.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AddManuallyScreenBody extends StatefulWidget {
  const AddManuallyScreenBody({super.key});

  @override
  State<AddManuallyScreenBody> createState() => _AddManuallyScreenBodyState();
}

class _AddManuallyScreenBodyState extends State<AddManuallyScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 35,
          right: 35,
          child: FloatingActionButton.extended(
            backgroundColor: HexColor('#6d69f0'),
            onPressed: () {
              // TODO: Submit form action
            },
            label: Row(
              children: const [
                Icon(Icons.save),
                SizedBox(
                  width: 10,
                ),
                Text("Save"),
              ],
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appBar(context),
            Expanded(
              child: SingleChildScrollView(
                child: buildForm(),
              ),
            )
          ],
        ),
      ],
    );
  }

  Padding appBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(1.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: HeroIcon(
              HeroIcons.arrowLeft,
              color: HexColor('#6d69f0'),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              CupertinoIcons.ellipsis_vertical,
              color: HexColor('#6d69f0'),
            ),
          ),

          //Container()
        ],
      ),
    );
  }

  buildForm() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Log Prescription",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  color: HexColor('#6d69f0'),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          buildVisitDetail(),
          const SizedBox(
            height: 30,
          ),
          buildMedDetail(),
          buildMedDetail()
        ],
      ),
    );
  }
}
