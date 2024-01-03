import 'package:flutter/material.dart';
import 'package:portofolio/utils/custom_colors.dart';
import 'package:url_launcher/url_launcher_string.dart';

class NavBarItemWithIcon extends StatelessWidget {
  final String text;
  final String icon;
  final String url;

  const NavBarItemWithIcon(
      {required this.text, required this.icon, required this.url, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        ),
        elevation: MaterialStateProperty.all(0),
        backgroundColor:
            MaterialStateProperty.all<Color>(CustomColors.brightBackground),
      ),
      icon: Image.asset(icon, color: CustomColors.darkBackground, height: 30),
      onPressed: () async {
        await launchUrlString(url);
      },
      label: Text(text,
          style: const TextStyle(
            fontSize: 12,
            color: CustomColors.darkBackground,
            fontWeight: FontWeight.w700,
          )),
    );
  }
}
