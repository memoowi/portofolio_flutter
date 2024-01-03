import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/utils/custom_colors.dart';

class Info extends StatelessWidget {
  final double width;
  final double ratio;
  const Info({required this.width, required this.ratio, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: width * ratio),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              ">> I'm studying software engineering at IDN Polytechnic of Bogor.",
              style: GoogleFonts.getFont('Delius',
                  color: CustomColors.gray, fontSize: 14)),
          const SizedBox(height: 20),
          Text('>> Coding is one of my favorite hobby.',
              style: GoogleFonts.getFont('Delius',
                  color: CustomColors.gray, fontSize: 14)),
          const SizedBox(height: 20),
          Text(
              '>> I always eager to learn new technologies to improve my skills and able to meet my client requirements and needs. ',
              style: GoogleFonts.getFont('Delius',
                  color: CustomColors.gray, fontSize: 14)),
        ],
      ),
    );
  }
}
