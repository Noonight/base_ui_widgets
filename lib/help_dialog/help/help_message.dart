import 'package:flutter/material.dart';

class HelpMessage extends StatelessWidget {
  const HelpMessage({Key? key, required this.message}) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(top: 5, bottom: 5),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(message),
      ),
    );
  }
}
