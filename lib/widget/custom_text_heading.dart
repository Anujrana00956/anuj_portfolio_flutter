import 'package:flutter/material.dart';
import 'package:folio/configs/app_typography.dart';

class CustomSectionHeading extends StatelessWidget {
  final String text;

  const CustomSectionHeading({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        textAlign: TextAlign.center,
        text,
        style:
            AppText.h1!.copyWith(fontFamily: 'Montserrat', letterSpacing: 10),
      ),
    );
  }
}

class CustomSectionHeadingM extends StatelessWidget {
  final String text;

  const CustomSectionHeadingM({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        textAlign: TextAlign.center,
        text,
        style:
            AppText.h3!.copyWith(fontFamily: 'Montserrat', letterSpacing: 10),
      ),
    );
  }
}

class CustomSectionSubHeading extends StatelessWidget {
  final String text;

  const CustomSectionSubHeading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          textAlign: TextAlign.center,
          text,
          style:
              AppText.l1!.copyWith(fontFamily: 'Montserrat', letterSpacing: 5),
        ),
      ),
    );
  }
}
