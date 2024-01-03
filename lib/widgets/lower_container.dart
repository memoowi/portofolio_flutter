import 'package:flutter/material.dart';
import 'package:portofolio/utils/breakpoints.dart';
import 'package:portofolio/utils/custom_colors.dart';
import 'package:portofolio/utils/image_asset_constants.dart';
import 'package:portofolio/widgets/hello_with_bio.dart';
import 'package:portofolio/widgets/info.dart';
import 'package:portofolio/widgets/skill_card.dart';

class LowerContainer extends StatelessWidget {
  final double width;
  final GlobalKey skillsKey;
  final GlobalKey aboutKey;

  const LowerContainer(
      {Key? key,
      required this.width,
      required this.skillsKey,
      required this.aboutKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        color: CustomColors.darkBackground,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth >= Breakpoints.lg) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // hello with bio and info
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        HelloWithBio(
                          key: aboutKey,
                          ratio: 0.4,
                          width: width,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Info(width: width, ratio: 0.4)
                      ],
                    ),
                    SizedBox(width: 0.05 * width),
                    // skills cards
                    Column(
                      key: skillsKey,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SkillCard(
                          title: 'Fullstack Web Development',
                          description:
                              'I’m developing web applications using Laravel and React.',
                          icon: ImageAssetConstants.laravel,
                          width: width,
                          ratio: 0.35,
                        ),
                        const SizedBox(height: 10),
                        SkillCard(
                            title: 'Frontend Development',
                            description:
                                'I’m developing frontend applications using react and some others frameworks.',
                            icon: ImageAssetConstants.react,
                            width: width,
                            ratio: 0.35),
                        const SizedBox(height: 10),
                        SkillCard(
                          title: 'Backend Development',
                          description:
                              'I’m developing backend applications using php or javascript also some others frameworks.',
                          icon: ImageAssetConstants.js,
                          width: width,
                          ratio: 0.35,
                        ),
                        const SizedBox(height: 10),
                        SkillCard(
                            title: 'Flutter Development',
                            description:
                                'I’m developing cross platform applications using flutter that can be used on both android and ios as well as web.',
                            icon: ImageAssetConstants.flutter,
                            width: width,
                            ratio: 0.35),
                      ],
                    ),
                  ],
                );
              } else {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // hello with bio and info
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        HelloWithBio(
                          key: aboutKey,
                          width: 3 * width,
                          ratio: 0.3,
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        Info(width: 3 * width, ratio: 0.3),
                      ],
                    ),
                    const SizedBox(height: 50),
                    // skills cards
                    Column(
                      key: skillsKey,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SkillCard(
                            title: 'Fullstack Web Development',
                            description:
                                'I’m developing web applications using Laravel and React.',
                            icon: ImageAssetConstants.laravel,
                            width: 2 * width,
                            ratio: 0.45),
                        const SizedBox(height: 10),
                        SkillCard(
                            title: 'Frontend Development',
                            description:
                                'I’m developing frontend applications using react and some others frameworks.',
                            icon: ImageAssetConstants.react,
                            width: 2 * width,
                            ratio: 0.45),
                        const SizedBox(height: 10),
                        SkillCard(
                            title: 'Backend Development',
                            description:
                                'I’m developing backend applications using php or javascript also some others frameworks.',
                            icon: ImageAssetConstants.js,
                            width: 2 * width,
                            ratio: 0.45),
                        const SizedBox(height: 10),
                        SkillCard(
                            title: 'Flutter Development',
                            description:
                                'I’m developing cross platform applications using flutter that can be used on both android and ios as well as web.',
                            icon: ImageAssetConstants.flutter,
                            width: 2 * width,
                            ratio: 0.45),
                      ],
                    ),
                  ],
                );
              }
            }),
            SizedBox(
              height: width * 0.07,
            ),
            const SizedBox(height: 10)
          ],
        ));
  }
}
