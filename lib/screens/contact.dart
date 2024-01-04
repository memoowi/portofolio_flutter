import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/utils/breakpoints.dart';
import 'package:portofolio/utils/custom_colors.dart';
import 'package:portofolio/utils/image_asset_constants.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Contact extends StatelessWidget {
  final double width;
  const Contact({required this.width, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              margin: (width > Breakpoints.md)
                  ? const EdgeInsets.symmetric(horizontal: 100, vertical: 40)
                  : const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // GITHUB
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 15),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              CustomColors.floatingButton),
                          shadowColor: MaterialStateColor.resolveWith(
                            (states) => CustomColors.secondary,
                          ),
                          overlayColor: MaterialStateColor.resolveWith(
                            (states) => CustomColors.primary,
                          ),
                          surfaceTintColor: MaterialStateColor.resolveWith(
                            (states) => CustomColors.darkBackground,
                          ),
                          side: MaterialStateBorderSide.resolveWith(
                              (states) => const BorderSide(
                                    color: CustomColors.darkBackground,
                                  )),
                        ),
                        icon: Image.asset(ImageAssetConstants.github,
                            color: CustomColors.darkBackground, height: 30),
                        onPressed: () async {
                          await launchUrlString('https://github.com/memoowi');
                        },
                        label: Text('Github',
                            style: GoogleFonts.getFont(
                              'Teko',
                              fontSize: 16,
                              color: CustomColors.darkBackground,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Instagram
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 15),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              CustomColors.floatingButton),
                          shadowColor: MaterialStateColor.resolveWith(
                            (states) => CustomColors.secondary,
                          ),
                          overlayColor: MaterialStateColor.resolveWith(
                            (states) => CustomColors.primary,
                          ),
                          surfaceTintColor: MaterialStateColor.resolveWith(
                            (states) => CustomColors.darkBackground,
                          ),
                          side: MaterialStateBorderSide.resolveWith(
                              (states) => const BorderSide(
                                    color: CustomColors.darkBackground,
                                  )),
                        ),
                        icon: Image.asset(ImageAssetConstants.instagram,
                            color: CustomColors.darkBackground, height: 30),
                        onPressed: () async {
                          await launchUrlString(
                              'https://www.instagram.com/me_moowi/');
                        },
                        label: Text('Instagram',
                            style: GoogleFonts.getFont(
                              'Teko',
                              fontSize: 16,
                              color: CustomColors.darkBackground,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Linkedin
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 15),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              CustomColors.floatingButton),
                          shadowColor: MaterialStateColor.resolveWith(
                            (states) => CustomColors.secondary,
                          ),
                          overlayColor: MaterialStateColor.resolveWith(
                            (states) => CustomColors.primary,
                          ),
                          surfaceTintColor: MaterialStateColor.resolveWith(
                            (states) => CustomColors.darkBackground,
                          ),
                          side: MaterialStateBorderSide.resolveWith(
                              (states) => const BorderSide(
                                    color: CustomColors.darkBackground,
                                  )),
                        ),
                        icon: Image.asset(ImageAssetConstants.linkedIn,
                            color: CustomColors.darkBackground, height: 30),
                        onPressed: () async {
                          await launchUrlString(
                              'https://www.linkedin.com/in/memoowi/');
                        },
                        label: Text('LinkedIn',
                            style: GoogleFonts.getFont(
                              'Teko',
                              fontSize: 16,
                              color: CustomColors.darkBackground,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Whatsapp
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 15),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              CustomColors.floatingButton),
                          shadowColor: MaterialStateColor.resolveWith(
                            (states) => CustomColors.secondary,
                          ),
                          overlayColor: MaterialStateColor.resolveWith(
                            (states) => CustomColors.primary,
                          ),
                          surfaceTintColor: MaterialStateColor.resolveWith(
                            (states) => CustomColors.darkBackground,
                          ),
                          side: MaterialStateBorderSide.resolveWith(
                              (states) => const BorderSide(
                                    color: CustomColors.darkBackground,
                                  )),
                        ),
                        icon: Image.asset(ImageAssetConstants.whatsapp,
                            color: CustomColors.darkBackground, height: 30),
                        onPressed: () async {
                          await launchUrlString('https://wa.me/6288232220652');
                        },
                        label: Text('Whatsapp',
                            style: GoogleFonts.getFont(
                              'Teko',
                              fontSize: 16,
                              color: CustomColors.darkBackground,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Email
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 15),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              CustomColors.floatingButton),
                          shadowColor: MaterialStateColor.resolveWith(
                            (states) => CustomColors.secondary,
                          ),
                          overlayColor: MaterialStateColor.resolveWith(
                            (states) => CustomColors.primary,
                          ),
                          surfaceTintColor: MaterialStateColor.resolveWith(
                            (states) => CustomColors.darkBackground,
                          ),
                          side: MaterialStateBorderSide.resolveWith(
                              (states) => const BorderSide(
                                    color: CustomColors.darkBackground,
                                  )),
                        ),
                        icon: Image.asset(ImageAssetConstants.email,
                            color: CustomColors.darkBackground, height: 30),
                        onPressed: () async {
                          await launchUrlString('mailto:megatenlike@gmail.com');
                        },
                        label: Text('Email',
                            style: GoogleFonts.getFont(
                              'Teko',
                              fontSize: 16,
                              color: CustomColors.darkBackground,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Back
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton.icon(
                          style: ButtonStyle(
                              iconSize: MaterialStateProperty.all<double>(26),
                              iconColor: MaterialStateColor.resolveWith(
                                (states) => CustomColors.darkBackground,
                              ),
                              overlayColor: MaterialStateColor.resolveWith(
                                (states) => Colors.transparent,
                              )),
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(
                            Icons.keyboard_double_arrow_left,
                          ),
                          label: const Text('Back',
                              style: TextStyle(
                                color: CustomColors.darkBackground,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              )),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
        ),
      ),
      backgroundColor: CustomColors.brightBackground,
    );
  }
}
