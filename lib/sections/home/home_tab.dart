import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:folio/Skills/screen_helper.dart';
import 'package:folio/animations/entrance_fader.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/utils/utils.dart';

import 'package:folio/widget/social_links.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: ScreenHelper.isMobile(context)
          ? const EdgeInsets.only(top: 80, left: 16, right: 16)
          : ScreenHelper.isDesktop(context)
              ? const EdgeInsets.only(top: 80, left: 100, right: 100)
              : const EdgeInsets.only(top: 80, left: 16),
      height: size.height * 1.02,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: Opacity(
              opacity: 0.9,
              child: EntranceFader(
                offset: const Offset(0, 0),
                delay: const Duration(seconds: 1),
                duration: const Duration(milliseconds: 800),
                child: Image.asset(
                  StaticUtils.blackWhitePhoto,
                  height: size.width < 1200
                      ? size.height * 0.75
                      : size.height * 0.85,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
              AppDimensions.normalize(30),
              AppDimensions.normalize(50),
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
                    Image.asset(
                      StaticUtils.hi,
                      height: AppDimensions.normalize(12),
                    ),
                  ],
                ),
                Space.y1!,
                Text(
                  "ANUJ",
                  style: AppText.h1!.copyWith(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w100,
                      letterSpacing: 20),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 180),
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
                EntranceFader(
                  offset: const Offset(-10, 0),
                  delay: const Duration(seconds: 1),
                  duration: const Duration(milliseconds: 800),
                  child: Row(
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
                        isRepeatingAnimation: true,
                      ),
                    ],
                  ),
                ),
                Space.y2!,
                const SocialLinks(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
