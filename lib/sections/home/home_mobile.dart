import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';

import 'package:folio/utils/utils.dart';
import 'package:folio/widget/social_links.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.width < 600 ? size.height * .75 : size.height * 1.025,
      child: Stack(
        children: [
          Positioned(
            bottom: 0.0,
            right: -AppDimensions.normalize(25),
            child: Opacity(
              opacity: 0.9,
              child: Image.asset(
                StaticUtils.blackWhitePhoto,
                height: AppDimensions.normalize(150),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
              AppDimensions.normalize(10),
              AppDimensions.normalize(40),
              0,
              0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "HEY THERE! ",
                      style: AppText.b2!.copyWith(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    Space.x!,
                    Image.asset(
                      StaticUtils.hi,
                      height: AppDimensions.normalize(10),
                    ),
                  ],
                ),
                Space.y!,
                Text(
                  "ANUJ",
                  style: AppText.h1!.copyWith(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w100,
                      letterSpacing: 20),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Text.rich(TextSpan(children: [
                      TextSpan(
                        text: "R",
                        style: AppText.h1b!.copyWith(
                            height: 1, letterSpacing: 20, color: Colors.red),
                      ),
                      TextSpan(
                        text: "A",
                        style:
                            AppText.h1b!.copyWith(height: 1, letterSpacing: 20),
                      ),
                      TextSpan(
                        text: "N",
                        style: AppText.h1b!.copyWith(
                            height: 1, letterSpacing: 20, color: Colors.red),
                      ),
                      TextSpan(
                        text: "A",
                        style:
                            AppText.h1b!.copyWith(height: 1, letterSpacing: 20),
                      ),
                    ]))),
                Space.y!,
                Row(
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      color: AppTheme.c!.primary!,
                    ),
                    AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText(
                          ' Flutter Developer',
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1,
                        ),
                        TyperAnimatedText(
                          ' UI/UX Enthusiast',
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1,
                        ),
                        TyperAnimatedText(
                          ' A friend :)',
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1,
                        ),
                      ],
                      repeatForever: true,
                      isRepeatingAnimation: true,
                    ),
                  ],
                ),
                Space.y!,
                const SocialLinks(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
