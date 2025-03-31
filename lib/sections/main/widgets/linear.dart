import 'package:flutter/material.dart';

class ProgressBarWithText extends StatefulWidget {
  const ProgressBarWithText({super.key, required this.end, required this.text});

  final double end;
  final String text;

  @override
  _ProgressBarWithTextState createState() => _ProgressBarWithTextState();
}

class _ProgressBarWithTextState extends State<ProgressBarWithText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize the AnimationController
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    // Create the animation for the progress bar value
    _animation = Tween<double>(begin: 0, end: widget.end).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    // Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Determine the size of the progress bar and text based on screen width
    final screenWidth = MediaQuery.of(context).size.width;
    double progressBarHeight;
    double textSize;

    if (screenWidth > 1200) {
      // Desktop
      progressBarHeight = 20;
      textSize = 18;
    } else if (screenWidth > 800) {
      // Tablet
      progressBarHeight = 18;

      textSize = 16;
    } else {
      // Mobile
      progressBarHeight = 15;
      textSize = 14;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            child: Text(
              widget.text,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.white,
                    fontSize: textSize,
                  ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Progress Bar
                LinearProgressIndicator(
                  value: _animation.value,
                  valueColor: const AlwaysStoppedAnimation(Colors.red),
                  backgroundColor: Colors.grey[300],
                  minHeight: progressBarHeight,
                  borderRadius: BorderRadius.circular(20),
                ),
                // Text inside the Progress Bar
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '${(_animation.value * 100).toInt()}%', // Showing percentage
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: textSize - 2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
