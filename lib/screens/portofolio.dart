import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/utils/breakpoints.dart';
import 'package:portofolio/utils/custom_colors.dart';
import 'package:portofolio/widgets/footer.dart';
import 'package:portofolio/widgets/lower_container.dart';
import 'package:portofolio/widgets/nav_bar.dart';
import 'package:portofolio/widgets/upper_container.dart';

class Portofolio extends StatefulWidget {
  const Portofolio({Key? key}) : super(key: key);

  @override
  State<Portofolio> createState() => _PortofolioState();
}

class _PortofolioState extends State<Portofolio> {
  late final List<Map> intrests;
  late final GlobalKey intrestsKey;
  late final GlobalKey skillsKey;
  late final GlobalKey aboutKey;
  late final GlobalKey homeKey;
  late final ScrollController scrollController;
  late final RxBool showFloatingButton;

  @override
  void initState() {
    skillsKey = GlobalKey();
    aboutKey = GlobalKey();
    homeKey = GlobalKey();
    scrollController = ScrollController();
    showFloatingButton = false.obs;

    scrollController.addListener(() {
      if (scrollController.offset >= Breakpoints.floatingButton) {
        showFloatingButton.value = true;
      } else {
        showFloatingButton.value = false;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      floatingActionButton: ObxValue<RxBool>(
          (data) => Visibility(
                visible: data.value,
                child: FloatingActionButton(
                    onPressed: () => scrollController.animateTo(
                        scrollController.position.minScrollExtent,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut),
                    backgroundColor: CustomColors.floatingButton,
                    child: const Icon(Icons.keyboard_arrow_up,
                        size: 30, color: CustomColors.darkBackground)),
              ),
          showFloatingButton),
      body: Container(
        color: CustomColors.brightBackground,
        width: width,
        child: SingleChildScrollView(
          controller: scrollController,
          child: Stack(
            children: [
              Column(
                children: [
                  const SizedBox(height: 130),
                  UpperContainer(width: width),
                  LowerContainer(
                      width: width, skillsKey: skillsKey, aboutKey: aboutKey),
                  Container(
                    width: width,
                    height: 0.2,
                    color: CustomColors.gray,
                  ),
                  Footer(
                    width: width,
                    scrollController: scrollController,
                  ),
                ],
              ),
              NavBar(
                width: width,
                skillsKey: skillsKey,
                aboutKey: aboutKey,
                key: homeKey,
                scrollController: scrollController,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
