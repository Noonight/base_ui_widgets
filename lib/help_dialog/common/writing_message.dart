import 'dart:async';

import 'package:base_ui_widgets/help_dialog/common/writing_dot.dart';
import 'package:flutter/material.dart';

class WritingMessage extends StatefulWidget {
  const WritingMessage({Key? key}) : super(key: key);

  final int count = 3;

  @override
  _WritingMessageState createState() => _WritingMessageState();
}

class _WritingMessageState extends State<WritingMessage> {
  int _currentIndex = 0;

  void animateWriting() {
    Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      setState(() {
        if (_currentIndex < widget.count - 1) {
          _currentIndex++;
        } else {
          _currentIndex = 0;
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();

    animateWriting();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: dots()
      ),
    );
  }

  List<WritingDot> dots() {
    List<WritingDot> _dots = [];
    for (int i = 0; i < widget.count; i++) {
      _dots.add(WritingDot(isIncreased: i == _currentIndex));
    }
    return _dots;
  }
}
