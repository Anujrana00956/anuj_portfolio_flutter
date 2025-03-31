import 'package:flutter/material.dart';
import 'package:folio/Skills/constant.dart';
import 'package:folio/Skills/screen_helper.dart';
import 'package:folio/sections/main/widgets/linear.dart';
import 'package:folio/widget/custom_text_heading.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: _buildUi(kDesktopMaxWidth),
      tablet: _buildUi(kTabletMaxWidth),
      mobile: _buildUi(getMobileMaxWidth(context)),
    );
  }

  Widget _buildUi(double width) {
    return Center(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Padding(
            padding: ScreenHelper.isMobile(context)
                ? const EdgeInsets.only(top: 80, left: 16, right: 16)
                : ScreenHelper.isDesktop(context)
                    ? const EdgeInsets.only(top: 80, left: 100, right: 100)
                    : const EdgeInsets.only(top: 80, left: 16),
            child: Column(
              children: [
                ScreenHelper.isMobile == true
                    ? const CustomSectionHeading(text: "TECHNICAL SKILLS")
                    : const CustomSectionHeadingM(text: "TECHNICAL SKILLS"),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  "This is all the skills listed below more will be added in due time. This is all the skills listed below more will be added in due time.",
                  style: TextStyle(
                    color: Colors.white,
                    height: 1.5,
                    fontSize: 16.0,
                  ),
                ),
                Flex(
                  direction: ScreenHelper.isMobile(context)
                      ? Axis.vertical
                      : Axis.horizontal,
                  children: [
                    Expanded(
                      flex: ScreenHelper.isMobile(context) ? 0 : 4,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 15.0,
                          ),
                          // Column(
                          //   children: skills
                          //       .map(
                          //         (skill) => Container(
                          //           margin: const EdgeInsets.only(bottom: 15.0),
                          //           child: Row(
                          //             children: [
                          //               Expanded(
                          //                 flex: skill.percentage,
                          //                 child: Container(
                          //                   padding:
                          //                       const EdgeInsets.only(left: 10.0),
                          //                   alignment: Alignment.centerLeft,
                          //                   height: 38.0,
                          //                   color: Colors.white,
                          //                   child: Text(skill.name),
                          //                 ),
                          //               ),
                          //               const SizedBox(
                          //                 width: 10.0,
                          //               ),
                          //               Expanded(
                          //                 // remaining (blank part)
                          //                 flex: 100 - skill.percentage,
                          //                 child: const Divider(
                          //                   color: Colors.white,
                          //                 ),
                          //               ),
                          //               const SizedBox(
                          //                 width: 10.0,
                          //               ),
                          //               Text(
                          //                 "${skill.percentage}%",
                          //                 style: const TextStyle(
                          //                   color: Colors.white,
                          //                   fontSize: 16.0,
                          //                 ),
                          //               )
                          //             ],
                          //           ),
                          //         ),
                          //       )
                          //       .toList(),
                          // )
                          Column(
                            children: [
                              ProgressBarWithText(
                                end: 0.98,
                                text: 'Flutter',
                              ),
                              ProgressBarWithText(
                                end: 0.85,
                                text: 'Dart',
                              ),
                              ProgressBarWithText(
                                end: 0.80,
                                text: 'Node.js',
                              ),
                              ProgressBarWithText(
                                end: 0.75,
                                text: 'JavaScript',
                              ),
                              ProgressBarWithText(
                                end: 0.72,
                                text: 'Java',
                              ),
                              ProgressBarWithText(
                                end: 0.80,
                                text: 'HTML',
                              ),
                              ProgressBarWithText(
                                end: 0.7,
                                text: 'CSS',
                              ),
                              ProgressBarWithText(
                                end: 0.50,
                                text: 'PHP',
                              ),
                              ProgressBarWithText(
                                end: 0.40,
                                text: 'Laravel',
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        flex: ScreenHelper.isMobile(context) ? 0 : 4,
                        child: Image.asset(
                          "assets/Technical-Skills_How-to-Them-Master-in-2022.jpg.optimal-removebg-preview.png",
                        )),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Skill {
  final String name;
  final int percentage;

  Skill({
    required this.name,
    required this.percentage,
  });
}
