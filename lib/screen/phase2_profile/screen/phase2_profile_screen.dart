import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import 'package:profile_phase2/helpers/appcolors.dart';
import 'package:profile_phase2/helpers/screen_config.dart';
import 'package:profile_phase2/helpers/size_extension.dart';
import 'package:profile_phase2/helpers/sizedbox.dart';
import 'package:profile_phase2/screen/phase2_profile/controller/phase2_profile_controller.dart';
import 'package:profile_phase2/screen/phase2_profile/widgets/adherence_percentage_indicator.dart';
import 'package:profile_phase2/screen/phase2_profile/widgets/calorie_card.dart';
import 'package:profile_phase2/screen/phase2_profile/widgets/item_card.dart';
import 'package:profile_phase2/screen/phase2_profile/widgets/person_detail_card.dart';
import 'package:provider/provider.dart';

class Phase2ProfileScreen extends StatefulWidget {
  const Phase2ProfileScreen({super.key});

  @override
  State<Phase2ProfileScreen> createState() => _Phase2ProfileScreenState();
}

class _Phase2ProfileScreenState extends State<Phase2ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<Phase2ProfileController>();
    ScreenUtil.getInstance().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        surfaceTintColor: AppColors.white,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_new,
              size: 20,
              color: AppColors.black,
            )),
        title: Center(
            child: Text(
          "Profile",
          style: GoogleFonts.roboto(
              color: AppColors.black,
              fontSize: 17.sp,
              fontWeight: FontWeight.w500),
        )),
        actions: [
          InkWell(
            onTap: () {
              //fix language selection
            },
            child: Row(
              children: [
                const Icon(
                  Icons.language,
                  size: 25,
                  color: AppColors.black,
                ),
                Text(
                  "EN",
                  style: GoogleFonts.roboto(
                      color: AppColors.black,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400),
                ),
                const Icon(
                  Icons.keyboard_arrow_down,
                  size: 10,
                  color: AppColors.black,
                ),
              ],
            ),
          ),

          sizedBoxWithWidth(10),
          // IconButton(onPressed: (){}, icon: Icon(Icons.exit_to_app)),
          InkWell(
            onTap: () {
              //navigation to exit
            },
            child: Image.asset("assets/images/logout_icon.png",
                height: 24, width: 24, fit: BoxFit.contain),
          ),
          sizedBoxWithWidth(10)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle share action
        },
        backgroundColor: AppColors.green,
        shape: const CircleBorder(),
        elevation: 6,
        child: const Icon(Icons.share, size: 24, color: AppColors.white),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 34,
                    width: 100,
                    padding: const EdgeInsets.only(left: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(36),
                        color: AppColors.white),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: AppColors.lightgreen,
                          child: Center(
                              child: Image.asset(
                            "assets/images/person_icon.png",
                            height: 18,
                            width: 18,
                            fit: BoxFit.contain,
                          )),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "Seeker",
                          style: GoogleFonts.roboto(
                              color: AppColors.black,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Image.asset(
                    "assets/images/100_badge.png",
                    height: 37,
                    width: 37,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
              sizedBoxWithHeight(20),
              //profile container with ui give functionality
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                decoration: BoxDecoration(
                  color: AppColors.profilecontainercolor,
                  borderRadius: BorderRadius.circular(10),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.grey.withOpacity(0.2),
                  //     spreadRadius: 2,
                  //     blurRadius: 8,
                  //     offset: const Offset(0, 4),
                  //   ),
                  // ],
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Vineeth",
                            style: GoogleFonts.roboto(
                                color: AppColors.white,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          sizedBoxWithWidth(5),
                          const Icon(
                            Icons.male,
                            size: 20,
                            color: AppColors.white,
                          ),
                          sizedBoxWithWidth(5),
                          Container(
                            height: 12,
                            width: 1,
                            color: AppColors.black,
                          ),
                          sizedBoxWithWidth(5),
                          InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.mode_edit_outline_outlined,
                                size: 20,
                                color: AppColors.white,
                              )),
                          const Spacer(),
                          Text(
                            "Economy",
                            style: GoogleFonts.roboto(
                                color: AppColors.white,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w300),
                          ),
                          sizedBoxWithWidth(5),
                          Image.asset(
                            "assets/images/habbiton_logo.png",
                            height: 21,
                            width: 28,
                            fit: BoxFit.contain,
                          )
                        ],
                      ),
                      sizedBoxWithHeight(10),
                      Row(
                        children: [
                          Text(
                            "6543 6897 4521 4569",
                            style: GoogleFonts.roboto(
                                color: AppColors.white,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700),
                          ),
                          sizedBoxWithWidth(5),
                          InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.content_copy_outlined,
                                size: 20,
                                color: AppColors.white,
                              )),
                          const Spacer(),
                          Stack(children: [
                            Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                  color: AppColors.green,
                                  border: Border.all(color: AppColors.white),
                                  borderRadius: BorderRadius.circular(10.54),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/images/profile_image.png"),
                                      fit: BoxFit.fill)),
                            ),
                            Positioned(
                                top: 2,
                                left: 2,
                                child: InkWell(
                                    onTap: () async {
                                      final ImagePicker picker = ImagePicker();
                                      final XFile? image =
                                          await picker.pickImage(
                                        source: ImageSource
                                            .camera, //fix gallery or image
                                      );
                                      if (image != null) {
                                        setState(() {
                                          provider.imagepath = image.path;
                                        });
                                      }
                                    },
                                    child: provider.imagepath != null
                                        ? Image.file(
                                            File(provider.imagepath!),
                                            fit: BoxFit.cover,
                                          )
                                        : Image.asset(
                                            "assets/images/Camera.png",
                                            height: 20,
                                            width: 20,
                                            fit: BoxFit.cover))),
                          ])
                        ],
                      ),
                      sizedBoxWithHeight(10),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Mail Id",
                                    style: GoogleFonts.roboto(
                                        color: AppColors.white,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  sizedBoxWithWidth(5),
                                  InkWell(
                                      onTap: () {},
                                      child: const Icon(
                                        Icons.mode_edit_outline_outlined,
                                        size: 20,
                                        color: AppColors.white,
                                      )),
                                ],
                              ),
                              Text(
                                "vineeth@example.com",
                                style: GoogleFonts.roboto(
                                    color: AppColors.white,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Mobile number",
                                    style: GoogleFonts.roboto(
                                        color: AppColors.white,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  sizedBoxWithWidth(5),
                                  InkWell(
                                      onTap: () {},
                                      child: const Icon(
                                        Icons.mode_edit_outline_outlined,
                                        size: 20,
                                        color: AppColors.white,
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/indian_flag.png",
                                    height: 11,
                                    width: 16,
                                    fit: BoxFit.contain,
                                  ),
                                  sizedBoxWithWidth(5),
                                  Text(
                                    "(+91)",
                                    style: GoogleFonts.roboto(
                                        color: AppColors.white,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  sizedBoxWithWidth(5),
                                  Text(
                                    "9876543210",
                                    style: GoogleFonts.roboto(
                                        color: AppColors.white,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      sizedBoxWithHeight(10),
                      Row(
                        children: [
                          Text(
                            "Native city:",
                            style: GoogleFonts.roboto(
                                color: AppColors.white,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          sizedBoxWithWidth(5),
                          Container(
                            height: 20,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.transparent,
                              border: Border.all(color: AppColors.black),
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Center(
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: provider.selectednativeCity,
                                  icon: const Icon(Icons.arrow_drop_down,
                                      size: 15, color: AppColors.white),
                                  style: GoogleFonts.roboto(
                                      color: AppColors.black,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400),
                                  dropdownColor: AppColors.white,
                                  items: provider.cities.map((String city) {
                                    return DropdownMenuItem<String>(
                                      value: city,
                                      child: Text(city),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      provider.selectednativeCity = newValue!;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "Current city:",
                            style: GoogleFonts.roboto(
                                color: AppColors.white,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          sizedBoxWithWidth(5),
                          Container(
                            height: 20,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.transparent,
                              border: Border.all(color: AppColors.black),
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Center(
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: provider.selectedcurrentCity,
                                  icon: const Icon(Icons.arrow_drop_down,
                                      size: 15, color: AppColors.white),
                                  style: GoogleFonts.roboto(
                                      color: AppColors.black,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400),
                                  dropdownColor: AppColors.white,
                                  items: provider.cities.map((String city) {
                                    return DropdownMenuItem<String>(
                                      value: city,
                                      child: Text(city),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      provider.selectedcurrentCity = newValue!;
                                    });
                                  },
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                      // Row(
                      //   children: [
                      //     Wrap(
                      //       spacing: 5,
                      //       runSpacing: 12,
                      //       crossAxisAlignment: WrapCrossAlignment.center,
                      //       children: [
                      //         Text(
                      //           "Native city:",
                      //           style: GoogleFonts.roboto(
                      //             color: AppColors.white,
                      //             fontSize: 10.sp,
                      //             fontWeight: FontWeight.w400,
                      //           ),
                      //         ),
                      //         Container(
                      //           height: 30,
                      //           padding:
                      //               const EdgeInsets.symmetric(horizontal: 6),
                      //           decoration: BoxDecoration(
                      //             color: AppColors.transparent,
                      //             border: Border.all(color: AppColors.black),
                      //             borderRadius: BorderRadius.circular(3),
                      //           ),
                      //           child: DropdownButtonHideUnderline(
                      //             child: DropdownButton<String>(
                      //               isDense: true,
                      //               value: provider.selectednativeCity,
                      //               icon: const Icon(Icons.arrow_drop_down,
                      //                   size: 16, color: AppColors.white),
                      //               style: GoogleFonts.roboto(
                      //                 color: AppColors.black,
                      //                 fontSize: 10.sp,
                      //                 fontWeight: FontWeight.w400,
                      //               ),
                      //               dropdownColor: AppColors.white,
                      //               items: provider.cities.map((String city) {
                      //                 return DropdownMenuItem<String>(
                      //                   value: city,
                      //                   child: Text(
                      //                     city,
                      //                     overflow: TextOverflow.ellipsis,
                      //                   ),
                      //                 );
                      //               }).toList(),
                      //               onChanged: (String? newValue) {
                      //                 setState(() {
                      //                   provider.selectednativeCity = newValue!;
                      //                 });
                      //               },
                      //             ),
                      //           ),
                      //         ),
                      //         const Spacer(),
                      //         Text(
                      //           "Current city:",
                      //           style: GoogleFonts.roboto(
                      //             color: AppColors.white,
                      //             fontSize: 10.sp,
                      //             fontWeight: FontWeight.w400,
                      //           ),
                      //         ),
                      //         Container(
                      //           height: 30,
                      //           padding:
                      //               const EdgeInsets.symmetric(horizontal: 6),
                      //           decoration: BoxDecoration(
                      //             color: AppColors.transparent,
                      //             border: Border.all(color: AppColors.black),
                      //             borderRadius: BorderRadius.circular(3),
                      //           ),
                      //           child: DropdownButtonHideUnderline(
                      //             child: DropdownButton<String>(
                      //               isDense: true,
                      //               value: provider.selectedcurrentCity,
                      //               icon: const Icon(Icons.arrow_drop_down,
                      //                   size: 16, color: AppColors.white),
                      //               style: GoogleFonts.roboto(
                      //                 color: AppColors.black,
                      //                 fontSize: 10.sp,
                      //                 fontWeight: FontWeight.w400,
                      //               ),
                      //               dropdownColor: AppColors.white,
                      //               items: provider.cities.map((String city) {
                      //                 return DropdownMenuItem<String>(
                      //                   value: city,
                      //                   child: Text(
                      //                     city,
                      //                     overflow: TextOverflow.ellipsis,
                      //                   ),
                      //                 );
                      //               }).toList(),
                      //               onChanged: (String? newValue) {
                      //                 setState(() {
                      //                   provider.selectedcurrentCity =
                      //                       newValue!;
                      //                 });
                      //               },
                      //             ),
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //   ],
                      // )
                    ]),
              ),
              sizedBoxWithHeight(30),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 15),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          const DynamicPercentIndicator(percent: 100 / 100),
                          sizedBoxWithWidth(4),
                          Text(
                            "Engagement\nAdherence",
                            maxLines: 2,
                            style: GoogleFonts.roboto(
                                color: AppColors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                  sizedBoxWithWidth(10),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 15),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          const DynamicPercentIndicator(percent: 70 / 100),
                          sizedBoxWithWidth(4),
                          Text(
                            "Program\nAdherence",
                            maxLines: 2,
                            style: GoogleFonts.roboto(
                                color: AppColors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              sizedBoxWithHeight(20),
              Row(
                children: [
                  const Expanded(
                    child: PersonDetailCard(
                        iconimage: "assets/images/age_icon.png",
                        smallcontainercolor: AppColors.lightblue,
                        detailheading: "AGE",
                        detailrate: "36 year old"),
                  ),
                  sizedBoxWithWidth(10),
                  const Expanded(
                    child: PersonDetailCard(
                        iconimage: "assets/images/blood_icon.png",
                        smallcontainercolor: AppColors.lightred,
                        detailheading: "BLOOD",
                        detailrate: "B+"),
                  ),
                ],
              ),
              sizedBoxWithHeight(10),
              Row(
                children: [
                  const Expanded(
                    child: PersonDetailCard(
                        iconimage: "assets/images/height_icon.png",
                        smallcontainercolor: AppColors.smalllightgreen,
                        detailheading: "HEIGHT",
                        detailrate: "175 cm"),
                  ),
                  sizedBoxWithWidth(10),
                  const Expanded(
                    child: PersonDetailCard(
                        iconimage: "assets/images/weight_icon.png",
                        smallcontainercolor: AppColors.lightorange,
                        detailheading: "WEIGHT",
                        detailrate: "70 kg"),
                  ),
                ],
              ),

              sizedBoxWithHeight(20),
              Row(
                children: [
                  const Expanded(
                    child: CalorieCard(
                        consumed: 1560,
                        target: 2200,
                        backgroundcolor: AppColors.smalllightgreen,
                        calorie: "Calorie Intake",
                        color: AppColors.green,
                        iconimage: "assets/images/calories_intake.png"),
                  ),
                  sizedBoxWithWidth(10),
                  const Expanded(
                    child: CalorieCard(
                        consumed: 450,
                        target: 900,
                        backgroundcolor: AppColors.lightorange,
                        calorie: "Calorie Burn",
                        color: AppColors.brown,
                        iconimage: "assets/images/calories_burn.png"),
                  )
                ],
              ),
              sizedBoxWithHeight(20),
              Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(children: [
                    Row(
                      children: [
                        Text(
                          "Daily Water Intake",
                          style: GoogleFonts.roboto(
                              color: AppColors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),
                        Image.asset(
                          "assets/images/waterglass_logo.png",
                          width: 21,
                          height: 21,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                    sizedBoxWithHeight(10),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "0.5/",
                              style: GoogleFonts.roboto(
                                  color: AppColors.blue,
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "2 liters",
                              style: GoogleFonts.roboto(
                                  color: AppColors.grey,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        sizedBoxWithWidth(20),
                        Container(
                          height: 36,
                          width: 1,
                          color: AppColors.blue,
                        ),

                        const Spacer(),
                        //replace image with functionality or backend
                        Image.asset(
                          "assets/images/finished_water.png",
                          height: 35,
                          width: 23,
                          fit: BoxFit.contain,
                        ),
                        sizedBoxWithWidth(10),
                        Image.asset(
                          "assets/images/finished_water.png",
                          height: 35,
                          width: 23,
                          fit: BoxFit.contain,
                        ),
                        sizedBoxWithWidth(10),
                        Image.asset(
                          "assets/images/unfinished_water.png",
                          height: 35,
                          width: 23,
                          fit: BoxFit.contain,
                        ),
                        sizedBoxWithWidth(10),
                        Image.asset(
                          "assets/images/unfinished_water.png",
                          height: 35,
                          width: 23,
                          fit: BoxFit.contain,
                        ),
                        sizedBoxWithWidth(10),
                        Image.asset(
                          "assets/images/unfinished_water.png",
                          height: 35,
                          width: 23,
                          fit: BoxFit.contain,
                        ),
                        sizedBoxWithWidth(10),
                        Image.asset(
                          "assets/images/unfinished_water.png",
                          height: 35,
                          width: 23,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                    sizedBoxWithHeight(20),
                    Container(
                      height: 34,
                      width: 150,
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            AppColors.gradientcolor1,
                            AppColors.gradientcolor2,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Center(
                        child: Text(
                          "See Progress",
                          style: GoogleFonts.roboto(
                              color: AppColors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                  ])),
              sizedBoxWithHeight(20),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Achievements",
                            style: GoogleFonts.roboto(
                                color: AppColors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          sizedBoxWithHeight(10),
                          Text(
                            "Keep going! You've earned 3 badges so far.",
                            maxLines: 2,
                            style: GoogleFonts.roboto(
                                color: AppColors.grey,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          sizedBoxWithHeight(10),
                          Container(
                            height: 50,
                            width: 230,
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  AppColors.gradientcolor1,
                                  AppColors.gradientcolor2,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(32),
                            ),
                            child: Center(
                              child: Text(
                                "Go to Achievements",
                                style: GoogleFonts.roboto(
                                    color: AppColors.white,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Image.asset(
                      "assets/images/trophy_image.png",
                      height: 85,
                      width: 75,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
              sizedBoxWithHeight(10),
              ItemCard(
                  image: "assets/images/gymcontest_icon.png",
                  item: "Gym Contest",
                  ontap: () {
                    //navigation
                  }),
              sizedBoxWithHeight(10),
              ItemCard(
                  image: "assets/images/diseaseselection_icon.png",
                  item: "Disease Selection",
                  ontap: () {
                    //navigation
                  }),
              sizedBoxWithHeight(10),
              ItemCard(
                  image: "assets/images/profilecontest_icon.png",
                  item: "Profile View Consent",
                  ontap: () {
                    //navigation
                  }),
              sizedBoxWithHeight(10),
              ItemCard(
                  image: "assets/images/opcard_icon.png",
                  item: "OP Cards",
                  ontap: () {
                    //navigation
                  }),
              sizedBoxWithHeight(10),
              ItemCard(
                  image: "assets/images/family_icon.png",
                  item: "Family Profile",
                  ontap: () {
                    //navigation
                  }),
              sizedBoxWithHeight(10),
              ItemCard(
                  image: "assets/images/family_icon.png",
                  item: "Family Health History",
                  ontap: () {
                    //navigation
                  }),
              sizedBoxWithHeight(10),
              ItemCard(
                  image: "assets/images/connectwearables_icon.png",
                  item: "Connect Wearables",
                  ontap: () {
                    //navigation
                  }),
              sizedBoxWithHeight(10),
              ItemCard(
                  image: "assets/images/healthgoal_icon.png",
                  item: "Health Goal",
                  ontap: () {
                    //navigation
                  }),
              sizedBoxWithHeight(10),
              ItemCard(
                  image: "assets/images/healthscore_icon.png",
                  item: "Health Score",
                  ontap: () {
                    //navigation
                  }),
              sizedBoxWithHeight(10),
              ItemCard(
                  image: "assets/images/healthwall_icon.png",
                  item: "Health Wall",
                  ontap: () {
                    //navigation
                  }),
              sizedBoxWithHeight(10),
              ItemCard(
                  image: "assets/images/healthcondition_icon.png",
                  item: "Health Conditions",
                  ontap: () {
                    //navigation
                  }),
              sizedBoxWithHeight(10),
              ItemCard(
                  image: "assets/images/allegeries_icon.png",
                  item: "Allergies",
                  ontap: () {
                    //navigation
                  }),
              sizedBoxWithHeight(10),
              ItemCard(
                  image: "assets/images/medication_icon.png",
                  item: "Medications",
                  ontap: () {
                    //navigation
                  }),
              sizedBoxWithHeight(10),
              ItemCard(
                  image: "assets/images/nutritionaltarget_icon.png",
                  item: "Nutritional Target",
                  ontap: () {
                    //navigation
                  }),
              sizedBoxWithHeight(10),
              ItemCard(
                  image: "assets/images/dietsettings_icon.png",
                  item: "Diet Settings",
                  ontap: () {
                    //navigation
                  }),
              sizedBoxWithHeight(10),
              ItemCard(
                  image: "assets/images/subscription_icon.png",
                  item: "Subscription",
                  ontap: () {
                    //navigation
                  }),
              sizedBoxWithHeight(10),
              ItemCard(
                  image: "assets/images/insurance_icon.png",
                  item: "Insurance",
                  ontap: () {
                    //navigation
                  }),
              sizedBoxWithHeight(10),
              ItemCard(
                  image: "assets/images/profilepasscode_icon.png",
                  item: "Change Profile Passcode",
                  ontap: () {
                    //navigation
                  }),
              sizedBoxWithHeight(10),
              ItemCard(
                  image: "assets/images/password_icon.png",
                  item: "Change Password",
                  ontap: () {
                    //navigation
                  }),
              sizedBoxWithHeight(10),
              ItemCard(
                  image: "assets/images/cashback_icon.png",
                  item: "Cashback",
                  ontap: () {
                    //navigation
                  }),
              sizedBoxWithHeight(10),
              ItemCard(
                  image: "assets/images/invoice_icon.png",
                  item: "Invoice List",
                  ontap: () {
                    //navigation
                  }),
              sizedBoxWithHeight(10),
              ItemCard(
                  image: "assets/images/refer_icon.png",
                  item: "Refer a Friend",
                  ontap: () {
                    //navigation
                  }),
              sizedBoxWithHeight(10),
              ItemCard(
                  // change image with exact same image, figma did not contain full image
                  image: "assets/images/logout_icon.png",
                  item: "Delete Account",
                  ontap: () {
                    //navigation
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
