import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:profile_phase2/helpers/appcolors.dart';
import 'package:profile_phase2/helpers/size_extension.dart';
import 'package:profile_phase2/helpers/sizedbox.dart';

class CalorieCard extends StatelessWidget {
  final String calorie;
  final String iconimage;
  final Color color;
  final Color backgroundcolor;
  final int consumed; // e.g., 1560
  final int target; // e.g., 2200
  const CalorieCard({
    super.key,
    required this.consumed,
    required this.target,
    required this.backgroundcolor,
    required this.calorie,
    required this.color,
    required this.iconimage,
  });

  @override
  Widget build(BuildContext context) {
    double percent = (consumed / target).clamp(0.0, 1.0);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
      child: Column(
        children: [
          Row(
            children: [
              Text(
                calorie,
                style: GoogleFonts.roboto(
                    color: AppColors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              Image.asset(
                iconimage,
                width: 11,
                height: 16,
                fit: BoxFit.contain,
              ),
            ],
          ),
          sizedBoxWithHeight(20),
          SizedBox(
            height: 155,
            width: 155,
            child: CircularPercentIndicator(
              radius: 70,
              lineWidth: 15,
              percent: percent,
              circularStrokeCap: CircularStrokeCap.round,
              backgroundColor: backgroundcolor,
              progressColor: color,
              center: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "$consumed/",
                    style: GoogleFonts.roboto(
                        color: color,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "$target kcal",
                    style: GoogleFonts.roboto(
                        color: AppColors.grey,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
