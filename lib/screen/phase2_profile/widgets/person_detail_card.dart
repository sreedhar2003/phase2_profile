import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_phase2/helpers/appcolors.dart';
import 'package:profile_phase2/helpers/size_extension.dart';
import 'package:profile_phase2/helpers/sizedbox.dart';

class PersonDetailCard extends StatelessWidget {
  final String iconimage;
  final Color smallcontainercolor;
  final String detailheading;
  final String detailrate;
  const PersonDetailCard(
      {super.key,
      required this.iconimage,
      required this.smallcontainercolor,
      required this.detailheading,
      required this.detailrate});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
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
          Container(
            height: 36,
            width: 36,
            decoration: BoxDecoration(
              color: smallcontainercolor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Image.asset(
                iconimage,
                height: 24,
                width: 24,
                fit: BoxFit.contain,
              ),
            ),
          ),
          sizedBoxWithWidth(10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  detailheading,
                  style: GoogleFonts.roboto(
                      color: AppColors.grey,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  detailrate,
                  style: GoogleFonts.roboto(
                      color: AppColors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
