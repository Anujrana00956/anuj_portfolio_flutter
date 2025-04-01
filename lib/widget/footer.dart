import 'package:flutter/material.dart';
import 'package:folio/constants.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Text(
                  "Developed in 💙 with ",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white12.withValues(alpha: 0.8),
                      fontWeight: FontWeight.w400,
                      letterSpacing: 5),
                ),
              ),
              InkWell(
                onTap: () => openURL(""),
                child: const Flexible(
                  child: Text(
                    "Anuj",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 5),
                  ),
                ),
              )
            ],
          ),
        ),
      
      ],
    );
  }
}
