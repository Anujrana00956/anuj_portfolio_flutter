import 'package:flutter/material.dart';
import 'package:folio/Skills/skills.dart';
import 'package:folio/animations/bottom_animation.dart';
import 'package:folio/education/education.dart';
import 'package:folio/experince/experice.dart';
import 'package:folio/sections/about/about.dart';
import 'package:folio/sections/contact/contact.dart';
import 'package:folio/sections/home/home.dart';
import 'package:folio/sections/portfolio/portfolio.dart';
import 'package:folio/sections/services/services.dart';
import 'package:folio/widget/footer.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';
  static const String logo1024 = 'assets/app/1024.png';

  // photos
  static const String mobilePhoto =
      'assets/1fa53026-664f-427c-a53b-874eae130c45-Photoroom.jpg';
  static const String coloredPhoto = 'assets/about_desktop.jpg';
  static const String blackWhitePhoto = 'assets/black_and_white_image.png';

  // work
  static const String sastaticket = 'assets/work/widget.gif';
  static const String fullterIsb = 'assets/work/flutter.png';
  static const String dsc = 'assets/work/ios1.png';
  static const String university = 'assets/work/mobile.png';

  // services
  static const String uiux = 'assets/services/ui.png';
  static const String blog = 'assets/services/blog.png';
  static const String appDev = 'assets/services/app.png';
  static const String rapid = 'assets/services/rapid.png';
  static const String openSource = 'assets/services/open.png';
  static const String openSourceBlack = 'assets/services/open_b.png';

  static const List<String> socialIconURL = [
    "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
    "https://img.icons8.com/android/480/ffffff/twitter.png",
    "https://img.icons8.com/metro/308/ffffff/linkedin.png",
    "https://img.icons8.com/material-rounded/384/ffffff/github.png",
  ];

  static const List<String> socialLinks = [
    "https://www.instagram.com/_anuj_0754?igsh=b292NDR4N29nYzVy",
    "https://x.com/AnujRana0754?t=GFraYTSdtyASKPJPIjwEJA&s=09",
    "https://www.linkedin.com/in/anuj-rana-170547258/",
    "https://github.com/Anujrana00956",
  ];

  static const String resume =
      'https://drive.google.com/file/d/1ILdGXlzmTiIq-F2OE7Ikq9C6gNcd5sXO/view?usp=drivesdk';

  static const String gitHub = 'https://github.com/Anujrana00956';
}

class BodyUtils {
  static List<Widget> views = [
    const HomePage(),
    const About(),
    const SkillSection(),
    const EducationSection(),
    const Experice(),
    const Services(),
    const Portfolio(),
    const Contact(),
    // const Footer(),
  ];

  static List<Widget> animatedViews() {
    return views.map((view) {
      return WidgetAnimator(child: view); // Wrap each view with WidgetAnimator
    }).toList();
  }
}
