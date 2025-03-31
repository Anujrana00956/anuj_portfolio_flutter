import 'package:flutter/material.dart';
import 'package:folio/Skills/constant.dart';
import 'package:folio/Skills/screen_helper.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:google_fonts/google_fonts.dart';

final List<Education> educationList = [
  Education(
    description: "Scored 7.99 CGPA during by academic session.",
    linkName: "Master In Computer Application",
    period: "2022 - 2024",
    uni: "Himachal Pradesh University, Hamirpur, India",
  ),
  Education(
    uni: "Himachal Pradesh University, Shimla, India",
    description: "Scored 7.18 CGPA during by academic session.",
    linkName: "Bachelor Of Science In Mathematics",
    period: "2018 - 2021",
  ),
  Education(
    description: "Scored 8.63 CGPA during by intermediate session.",
    linkName: "Intermidate",
    period: "2017 - 2018",
    uni: 'Goverment Senior Secondary School Ramgarh Sikri, Punjab, India',
  ),
  Education(
    description: "Scored 9.37 CGPA during by Matricalution session.",
    linkName: "Matricalution",
    period: "2015 - 2016",
    uni: 'Dream Public School Ramgarh Sikri, Punjab, India',
  ),
];

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: _buildUi(kDesktopMaxWidth),
      tablet: _buildUi(kTabletMaxWidth),
      mobile: _buildUi(MediaQuery.of(context).size.width),
    );
  }

  Widget _buildUi(double width) {
    final isMobile = width < kTabletMaxWidth;

    return LayoutBuilder(builder: (context, index) {
      return Padding(
        padding: ScreenHelper.isMobile(context)
            ? const EdgeInsets.only(top: 80, left: 16, right: 16)
            : ScreenHelper.isDesktop(context)
                ? const EdgeInsets.only(top: 80, left: 100, right: 100)
                : const EdgeInsets.only(top: 80, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ScreenHelper.isMobile == true
                ? const CustomSectionHeading(text: "EDUCATION")
                : const CustomSectionHeadingM(text: "EDUCATION"),
            const SizedBox(height: 20.0),
            Container(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "A full stack all round developer that does all the job he needs to do at all times. Actually this is a false statement",
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40.0),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      return Wrap(
                        spacing: isMobile ? 0.0 : 20.0,
                        runSpacing: 20.0,
                        children: educationList
                            .map(
                              (education) => SizedBox(
                                width: isMobile
                                    ? constraints.maxWidth
                                    : (constraints.maxWidth / 2.0 - 20.0),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      education.period,
                                      style: GoogleFonts.oswald(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                    const SizedBox(height: 5.0),
                                    Text(
                                      education.uni,
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        color: kCaptionColor,
                                        height: 1.5,
                                      ),
                                    ),
                                    const SizedBox(height: 5.0),
                                    Text(
                                      education.description,
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        color: kCaptionColor,
                                        height: 1.5,
                                      ),
                                    ),
                                    const SizedBox(height: 10.0),
                                    MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Text(
                                          education.linkName,
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 40.0),
                                  ],
                                ),
                              ),
                            )
                            .toList(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}

class Education {
  final String description;
  final String linkName;
  final String period;
  final String uni;

  Education({
    required this.description,
    required this.uni,
    required this.linkName,
    required this.period,
  });
}
