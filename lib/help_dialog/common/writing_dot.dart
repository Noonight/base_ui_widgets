import 'package:flutter/material.dart';

class WritingDot extends StatelessWidget {
  const WritingDot({Key? key, required this.isIncreased}) : super(key: key);

  final bool isIncreased;

  static double lowSize = 8;
  static double maxSize = 12;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 3),
      height: isIncreased ? maxSize : lowSize,
      width: isIncreased ? maxSize : lowSize,
      decoration: const BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}
