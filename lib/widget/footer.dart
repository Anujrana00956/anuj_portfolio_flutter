import 'package:flutter/material.dart';
import 'package:folio/constants.dart';
import 'package:folio/widget/social_links.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
      height: 200,
      color: Colors.white54.withValues(alpha:  0.2),
      width: width,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Text(
                    "Developed in 💙 with ",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white12.withValues(alpha:  0.8),
                        fontWeight: FontWeight.w400,
                        letterSpacing: 15),
                  ),
                ),
                InkWell(
                  onTap: () => openURL(""),
                  child: const Flexible(
                    child: Text(
                      "Flutter",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 12),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [SocialLinks()],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "@copyrights|anujrana2392001@gmail.com",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w200,
                    color: Colors.blueAccent.shade100),
              )
            ],
          )
        ],
      ),
    );
  }
}
