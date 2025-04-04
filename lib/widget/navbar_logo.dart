import 'package:flutter/material.dart';
import 'package:folio/configs/app_typography.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "< ",
          style: AppText.b1,
        ),
        Text(
          "Rana",
          style: AppText.b1b!.copyWith(
            fontFamily: 'Agustina',
          ),
        ),
        Text(
          MediaQuery.of(context).size.width >= 1000 ? " />\t\t" : " />",
          style: AppText.b1,
        )
      ],
    );
  }
}
