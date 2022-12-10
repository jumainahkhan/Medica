import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:medica/Controller/MedLogController.dart';

Column buildMedDetail() {
  MedLogController medLogController = Get.put(MedLogController());
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Medicine Details",
            style: GoogleFonts.lato(
              fontSize: 18,
              color: HexColor('#6d69f0'),
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            children: const [
              Text("M"),
              SizedBox(
                width: 40,
              ),
              Text("A"),
              SizedBox(
                width: 40,
              ),
              Text("N"),
              SizedBox(
                width: 30,
              ),
            ],
          )
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      GetBuilder<MedLogController>(builder: (context) {
        return ListView.builder(
            shrinkWrap: true,
            itemCount: medLogController.medCount,
            itemBuilder: (context, index) {
              return Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Medicine Name',
                              hintStyle: GoogleFonts.lato(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                              border: InputBorder.none,
                              icon: Icon(
                                Icons.medication_liquid_outlined,
                                color: HexColor('#6d69f0'),
                              ),
                            ),
                          )),
                          Checkbox(
                            value: false,
                            onChanged: (value) {},
                          ),
                          Checkbox(
                            value: false,
                            onChanged: (value) {},
                          ),
                          Checkbox(
                            value: false,
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // const Divider(
                      //   color: Colors.black38,
                      //   height: 2,
                      //   thickness: 1,
                      // ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                    ],
                  ),
                ),
              );
            });
      }),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
              onTap: () {
                medLogController.incrementMedCount();
              },
              child: const Icon(Icons.add)),
          const SizedBox(
            width: 10,
          ),
          GetBuilder<MedLogController>(builder: (context) {
            return Text(
              medLogController.medCount.toString(),
              style: GoogleFonts.lato(
                fontSize: 20,
                color: HexColor('#6d69f0'),
                fontWeight: FontWeight.w600,
              ),
            );
          }),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
              onTap: () {
                medLogController.decrementMedCount();
              },
              child: const Icon(Icons.remove))
        ],
      )
    ],
  );
}
