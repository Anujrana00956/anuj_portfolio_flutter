import 'package:flutter/material.dart';
import 'package:folio/Skills/constant.dart';
import 'package:folio/Skills/screen_helper.dart';
import 'package:folio/widget/custom_text_heading.dart';
import "package:stepper_list_view/stepper_list_view.dart";

final List<StepperItemData> stepperList = [
  StepperItemData(
      id: "0",
      content: ({
        "name1": "Flutter ",
        "name2": "Developer - ",
        "company": "Nessfi ",
        "full": "Tech Pvt. Ltd.",
        "occupation":
            "Currently working as a Flutter Developer at Nessife Tech Pvt. Ltd. in Mohali.",
        "Date": "Aug 2024 - Present",
        "learning": [
          "Conferred with project managers and other stakeholders to fully understand software design specifications and plan optimal development approaches."
              "\nReviewed project requirements to identify customer expectations and resources needed to meet goals."
              "\nAnalyzed code and corrected errors to optimize output."
              "\nUpdated software upon release of vendor patches to mitigate vulnerabilities."
              "\nLeveraged Agile methodologies to move development lifecycle rapidly through initial prototyping to enterprise-quality testing and final implementation."
              "\nAnalyzed user needs and software requirements to determine design feasibility."
              "\nProgrammed applications and tools using object-oriented languages with goals of code abstraction, stability and reuse."
              "\nModified existing software to correct errors, adapt to newly implemented hardware or upgrade interfaces."
              "\nAchieved cost-savings by developing functional solutions to problems."
              "\nCollaborated closely with team members to achieve project objectives and meet deadlines."
        ]
      }),
      avatar: "hello"),
  StepperItemData(
      id: "1",
      content: ({
        "name1": "Flutter ",
        "name2": "Developer - ",
        "company": "Development ",
        "full": "Logic Pvt. Ltd.",
        "occupation":
            "10 months of experience as a Flutter Developert at Development Logics Pvt. Ltd. in Dharamshala.",
        "Date": "July 2023 - Apr 2024",
        "learning": [
          "Designed and developed user interfaces with Flutter to ensure a smooth and responsive user experience."
              "\nIntegrated REST APIs for seamless data interaction between the app and backend services."
              "\nLearned and utilized Git for effective code management and version control."
              "\nParticipated in regular team meetings to discuss project progress and coordinate tasks."
              "\nImplemented best practices for app development and maintained documentation ."
              "\nAnalyzed code and corrected errors to optimize output."
              "\nAssessed code during testing stage to determine potential glitches and bugs."
              "\nWorked closely with systems analysts, engineers and programmers to understand limitations, develop capabilities and resolve software problems."
        ]
      }),
      avatar: "hello"),
];

class Experice extends StatelessWidget {
  const Experice({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: _buildUi(context, kDesktopMaxWidth, 100.0, 50.0),
      tablet: _buildUi(context, kTabletMaxWidth, 50.0, 30.0),
      mobile: _buildUi(context, getMobileMaxWidth(context), 20.0, 20.0),
    );
  }

  Widget _buildUi(BuildContext context, double width, double horizontalPadding,
      double verticalPadding) {
    return LayoutBuilder(builder: (context, int) {
      return Padding(
        padding: ScreenHelper.isMobile(context)
            ? const EdgeInsets.only(top: 80, left: 16, right: 16)
            : ScreenHelper.isDesktop(context)
                ? const EdgeInsets.only(top: 80, left: 100, right: 100)
                : const EdgeInsets.only(top: 80, left: 16),
        child: Column(
          children: [
            ScreenHelper.isMobile == true
                ? const CustomSectionHeading(text: "EXPERIENCE")
                : const CustomSectionHeadingM(text: "EXPERIENCE"),
            const SizedBox(
              height: 50,
            ),
            StepperListView(
              physics: const ClampingScrollPhysics(),
              stepSize: const Size.fromRadius(12),
              shrinkWrap: true,
              stepperData: stepperList,
              stepAvatar: (context, value) => const PreferredSize(
                preferredSize: Size.fromRadius(20),
                child: CircleAvatar(
                  child: Icon(Icons.add),
                ),
              ),
              stepContentWidget: (context, value) {
                final stepData = value as StepperItemData;
                final occupation = stepData.content['occupation'] as String?;
                final date = stepData.content['Date'] as String?;

                return Container(
                  padding: const EdgeInsets.all(10),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(7),
                    visualDensity:
                        const VisualDensity(vertical: -4, horizontal: -4),
                    title: Text.rich(TextSpan(children: [
                      TextSpan(
                        text: stepData.content['name1'] ?? '',
                        style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 4,
                            color: Colors.red),
                      ),
                      TextSpan(
                        text: stepData.content['name2'] ?? '',
                        style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 4),
                      ),
                      TextSpan(
                        text: stepData.content['company'] ?? '',
                        style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 4,
                            overflow: TextOverflow.ellipsis,
                            color: Colors.red),
                      ),
                      TextSpan(
                        text: stepData.content['full'] ?? '',
                        style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 4),
                      )
                    ])),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Row(children: [
                          const Icon(Icons.work),
                          const SizedBox(width: 10),
                          Expanded(
                              child: Text(occupation ?? '',
                                  style: TextStyle(color: Colors.grey[300])))
                        ]),
                        const SizedBox(height: 5),
                        Row(children: [
                          const Icon(Icons.date_range),
                          const SizedBox(width: 10),
                          Expanded(
                              child: Text(
                            date ?? '',
                            style: TextStyle(color: Colors.grey[500]),
                          ))
                        ]),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Column(
                            children:
                                (stepData.content['learning'] as List<String>)
                                    .map((e) {
                              return Text(e,
                                  style: TextStyle(
                                      color:
                                          Colors.white.withValues(alpha: 0.6),
                                      height: 2));
                            }).toList(),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
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

  Education({
    required this.description,
    required this.linkName,
    required this.period,
  });
}
