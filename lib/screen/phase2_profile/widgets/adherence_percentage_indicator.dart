import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_phase2/helpers/appcolors.dart';

class DynamicPercentIndicator extends StatelessWidget {
  final double percent;

  const DynamicPercentIndicator({super.key, required this.percent});

  @override
  Widget build(BuildContext context) {
    Color borderStartColor;
    Color borderEndColor;
    Color centerColor;
    Color textColor;

    if (percent < 0.5) {
      // Red
      borderStartColor = AppColors.darkred;
      borderEndColor = AppColors.red;
      centerColor = AppColors.redcontainercolor;
      textColor = AppColors.darkred;
    } else if (percent < 0.8) {
      // Orange
      borderStartColor = AppColors.darkorange;
      borderEndColor = AppColors.orange;
      centerColor = AppColors.lightorange;
      textColor = AppColors.darkorange;
    } else {
      // Green
      borderStartColor = AppColors.green;
      borderEndColor = AppColors.lightgreen;
      centerColor = AppColors.smallcontainercolor;
      textColor = AppColors.headingcolor;
    }

    return SizedBox(
      height: 50,
      width: 50,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircularPercentIndicator(
            radius: 25,
            lineWidth: 6.0,
            percent: 1.0,
            circularStrokeCap: CircularStrokeCap.round,
            backgroundColor: Colors.grey.shade300,
            linearGradient: LinearGradient(
              colors: [borderStartColor, borderEndColor],
            ),
          ),
          Container(
            height: 38,
            width: 38,
            decoration: BoxDecoration(
              color: centerColor,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Text(
              "${(percent * 100).toStringAsFixed(0)}%",
              style: GoogleFonts.roboto(
                color: textColor,
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
