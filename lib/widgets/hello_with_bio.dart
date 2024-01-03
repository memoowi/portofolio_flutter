import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/utils/custom_colors.dart';

class HelloWithBio extends StatelessWidget {
  final double width;
  final double ratio;
  const HelloWithBio({required this.width, required this.ratio, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: width * ratio),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hello! I'm Misbach . . .",
              style: GoogleFonts.getFont('Teko',
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 2,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white)),
          const SizedBox(height: 5),
          Text(
              'I use the name memoowi as my nickname on social media. I look for the opportunities where I can implement my skills and improving them.',
              style: GoogleFonts.getFont('Delius',
                  color: CustomColors.gray, fontSize: 16)),
        ],
      ),
    );
  }
}
