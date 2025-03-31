import 'package:flutter/material.dart';
import 'package:folio/configs/app_typography.dart';

class AboutMeData extends StatelessWidget {
  final String data;
  final String information;
  final Alignment? alignment;

  const AboutMeData({
    super.key,
    required this.data,
    required this.information,
    this.alignment,
  });
  @override
  Widget build(BuildContext context) {

    return Align(
      alignment: alignment ?? Alignment.center,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "$data: ",
              style: AppText.l1b!.copyWith(
                color:  Colors.white,
              ),
            ),
            TextSpan(
              text: " $information\n",
              style: AppText.l1!.copyWith(
                color:  Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
