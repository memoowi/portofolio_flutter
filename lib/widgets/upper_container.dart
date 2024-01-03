import 'package:flutter/material.dart';
import 'package:portofolio/utils/breakpoints.dart';
import 'package:portofolio/utils/custom_colors.dart';
import 'package:portofolio/widgets/description.dart';
import 'package:portofolio/widgets/memoowi_image.dart';

class UpperContainer extends StatelessWidget {
  final double width;
  const UpperContainer({required this.width, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      color: CustomColors.brightBackground,
      padding: const EdgeInsets.only(bottom: 20),
      child: LayoutBuilder(builder: (context, consraints) {
        if (consraints.maxWidth >= Breakpoints.lg) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 600),
              Description(
                isVertical: false,
                width: width,
              ),
              const SizedBox(width: 100),
              MemoowiImage(
                width: width,
              ),
            ],
          );
        } else if (consraints.maxWidth < Breakpoints.lg &&
            consraints.maxWidth >= Breakpoints.md) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: width * 0.07),
              MemoowiImage(width: (1.4 * width)),
              SizedBox(height: 0.05 * width),
              Description(
                isVertical: true,
                width: width,
              ),
            ],
          );
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: width * 0.07),
              Center(child: MemoowiImage(width: 2 * width)),
              SizedBox(height: 0.05 * width),
              Description(isVertical: true, width: width),
            ],
          );
        }
      }),
    );
  }
}
