import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portofolio/screens/contact.dart';
import 'package:portofolio/utils/custom_colors.dart';
// import 'package:url_launcher/url_launcher_string.dart';

class Description extends StatelessWidget {
  final bool isVertical;
  final double width;
  const Description({required this.isVertical, required this.width, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isVertical ? double.infinity : width * 0.29,
      child: Column(
        crossAxisAlignment:
            isVertical ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Container(
                width: isVertical ? 0.9 * width : width,
                padding: const EdgeInsets.all(15),
                alignment: Alignment.center,
                color: CustomColors.darkBackground,
                child: Center(
                    child: Text(
                        'Fullstack Web Developer - Frontend Developer - Backend Developer - Flutter Developer',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont('Days One',
                            color: CustomColors.primary,
                            fontSize: 10,
                            fontWeight: FontWeight.w500)))),
          ),
          SizedBox(height: 0.05 * width),
          Text("Hee Hoo ~ ",
              style: GoogleFonts.getFont('Delius',
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500)),
          const SizedBox(height: 5),
          Text('Misbachul Munir Al Haddad Alwi',
              style: GoogleFonts.getFont('Teko',
                  color: Colors.white, fontSize: 30)),
          const SizedBox(height: 20),
          SizedBox(
            width: isVertical ? double.infinity : width * 0.29,
            height: 90,
            child: AnimatedTextKit(
              repeatForever: true,
              pause: const Duration(seconds: 3),
              animatedTexts: [
                TyperAnimatedText(
                    "I'm a Fullstack Developer, building cross-platform application.",
                    speed: const Duration(milliseconds: 80),
                    textAlign: isVertical ? TextAlign.center : TextAlign.start,
                    textStyle: GoogleFonts.getFont('Delius',
                        color: CustomColors.gray, fontSize: 14)),
              ],
            ),
          ),
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Contact(
                        width: width,
                      ),
                    ));
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: CustomColors.darkBackground,
                    width: 2.0,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  color: CustomColors.primary,
                ),
                child: Text("Get In Touch !",
                    style: GoogleFonts.getFont('Teko',
                        fontWeight: FontWeight.w600,
                        color: CustomColors.darkBackground,
                        fontSize: 16)),
              ))
        ],
      ),
    );
  }
}
