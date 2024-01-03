import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/utils/breakpoints.dart';
import 'package:portofolio/utils/custom_colors.dart';

class SkillCard extends StatelessWidget {
  final String title;
  final String description;
  final double width;
  final double ratio;
  final String icon;
  const SkillCard(
      {required this.title,
      required this.description,
      required this.icon,
      required this.width,
      required this.ratio,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: CustomColors.brightBackground,
      child: SizedBox(
        width: width * ratio,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: GoogleFonts.getFont('Delius',
                          color: CustomColors.secondary,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 12),
                  Text(description,
                      style: GoogleFonts.getFont('Delius',
                          color: CustomColors.secondary, fontSize: 14)),
                ],
              ),
            ),
            width >= Breakpoints.md
                ? Positioned(
                    top: 16,
                    right: 16,
                    width: 30,
                    height: 30,
                    child: Image.asset(icon),
                  )
                : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
