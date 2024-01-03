import 'package:flutter/material.dart';
import 'package:portofolio/utils/image_asset_constants.dart';

class MemoowiImage extends StatelessWidget {
  final double width;
  const MemoowiImage({
    required this.width,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          constraints: const BoxConstraints(maxWidth: 400),
          child: Image.asset(
            ImageAssetConstants.memoowi,
            width: width * 0.3,
            height: width * 0.3,
          ),
        ),
      ],
    );
  }
}
