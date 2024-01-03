import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/utils/breakpoints.dart';
import 'package:portofolio/utils/image_asset_constants.dart';
import 'package:portofolio/widgets/logo.dart';
import 'package:portofolio/widgets/nav_bar_item.dart';
import 'package:portofolio/widgets/nav_bar_item_with_icon.dart';

class NavBar extends StatelessWidget {
  final double width;
  final GlobalKey skillsKey;
  final GlobalKey aboutKey;
  final ScrollController scrollController;
  late final RxDouble collapsableHeight;
  NavBar(
      {required this.width,
      required this.skillsKey,
      required this.aboutKey,
      required this.scrollController,
      Key? key})
      : super(key: key) {
    collapsableHeight = 0.0.obs;
  }

  void scrollToWidgetByKey(GlobalKey key) {
    RenderBox box = key.currentContext?.findRenderObject() as RenderBox;
    Offset position = box.localToGlobal(Offset.zero); //this is global position
    double y = position.dy;
    scrollController.animateTo(y,
        duration: const Duration(milliseconds: 700), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    Widget navBarRow = Stack(children: [
      Padding(
        padding: EdgeInsets.only(left: width * 0.04),
        child: Logo(
          width: width,
          scrollController: scrollController,
        ),
      ),
      Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NavBarItem(
              text: 'Home',
              onTap: () {},
            ),
            NavBarItem(
              text: 'About',
              onTap: () => scrollToWidgetByKey(aboutKey),
            ),
            NavBarItem(
                text: 'Skills', onTap: () => scrollToWidgetByKey(skillsKey)),
            const SizedBox(width: 60),
          ]),
      const Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        SizedBox(width: 50),
        Row(children: [
          NavBarItemWithIcon(
              text: 'instagram',
              icon: ImageAssetConstants.instagram,
              url: 'https://www.instagram.com/me_moowi/'),
          SizedBox(width: 10),
          NavBarItemWithIcon(
            text: 'github',
            icon: ImageAssetConstants.github,
            url: 'https://github.com/memoowi',
          ),
          SizedBox(width: 10),
          NavBarItemWithIcon(
              text: 'linkedIn',
              icon: ImageAssetConstants.linkedIn,
              url: 'https://www.linkedin.com/in/memoowi/'),
          SizedBox(width: 50),
        ])
      ])
    ]);
    return Stack(
      children: [
        Container(
          height: 80.0,
          margin: const EdgeInsets.only(top: 40.0),
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: (width < Breakpoints.xlg && width >= Breakpoints.lg)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: width * 0.04),
                        child: Logo(
                          width: width,
                          scrollController: scrollController,
                        )),
                    const Row(children: [
                      NavBarItemWithIcon(
                          text: '',
                          icon: ImageAssetConstants.instagram,
                          url: 'https://www.instagram.com/me_moowi/'),
                      SizedBox(width: 10),
                      NavBarItemWithIcon(
                        text: '',
                        icon: ImageAssetConstants.github,
                        url: 'https://github.com/memoowi',
                      ),
                      SizedBox(width: 10),
                      NavBarItemWithIcon(
                          text: '',
                          icon: ImageAssetConstants.linkedIn,
                          url: 'https://www.linkedin.com/in/memoowi/'),
                      SizedBox(width: 50),
                    ])
                  ],
                )
              : (width < Breakpoints.lg)
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          ImageAssetConstants.logoMini,
                          width: width * 0.2,
                          height: width * 0.1,
                        ),
                        const Row(children: [
                          NavBarItemWithIcon(
                              text: '',
                              icon: ImageAssetConstants.instagram,
                              url: 'https://www.instagram.com/me_moowi/'),
                          NavBarItemWithIcon(
                            text: '',
                            icon: ImageAssetConstants.github,
                            url: 'https://github.com/memoowi',
                          ),
                          NavBarItemWithIcon(
                              text: '',
                              icon: ImageAssetConstants.linkedIn,
                              url: 'https://www.linkedin.com/in/memoowi/'),
                        ])
                      ],
                    )
                  : navBarRow,
        ),
      ],
    );
  }
}
