import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_phase2/helpers/appcolors.dart';
import 'package:profile_phase2/helpers/size_extension.dart';
import 'package:profile_phase2/helpers/sizedbox.dart';

class ItemCard extends StatelessWidget {
  final String image;
  final String item;
  final VoidCallback ontap;
  const ItemCard(
      {super.key,
      required this.image,
      required this.item,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.all(15),
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
            Image.asset(image, height: 24, width: 24, fit: BoxFit.contain),
            sizedBoxWithWidth(10),
            Text(
              item,
              style: GoogleFonts.roboto(
                  color: AppColors.black,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              size: 10,
              color: AppColors.grey,
            )
          ],
        ),
      ),
    );
  }
}
