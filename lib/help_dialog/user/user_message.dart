import 'package:flutter/material.dart';

class UserMessage extends StatelessWidget {
  const UserMessage({Key? key, required this.message}) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.only(top: 5, bottom: 5),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.indigo,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(message),
      ),
    );
  }
}