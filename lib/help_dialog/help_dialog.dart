import 'dart:math';

import 'package:base_ui_widgets/help_dialog/user/user_actions.dart';
import 'package:base_ui_widgets/help_dialog/user/user_message.dart';
import 'package:flutter/material.dart';

import 'help/help_message.dart';

class HelpDialog extends StatefulWidget {
  const HelpDialog({Key? key}) : super(key: key);

  @override
  _HelpDialogState createState() => _HelpDialogState();
}

class _HelpDialogState extends State<HelpDialog> {

  bool _isReceivingMoney = false;
  bool _isReceivingMoneyUserPressed = false;
  bool _isAggression = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Thank you for choosing our service!'),
      content: SingleChildScrollView(
        child: ListBody(
          children: [
            const HelpMessage(message: 'How can I help you?'),
            UserActions(actions: [
              UserActionModel('Give me your money!', () {
                setState(() {
                  _isReceivingMoney = true;
                  doWithRandomDelay(() {
                    _isReceivingMoneyUserPressed = true;
                    doWithRandomDelay(() {
                      Navigator.pop(context);
                    });
                  });
                });
              }),
              UserActionModel("I don't need any help. \nYou need it!", () {
                setState(() {
                  _isAggression = true;
                });
              }),
            ]),
            helpMessage('Currently we have 0.000 rubles', _isReceivingMoney),
            userMessage("Fck I'm out!", _isReceivingMoneyUserPressed)
          ],
        ),
      ),
    );
  }

  void doWithRandomDelay(Function action) {
    Future.delayed(Duration(milliseconds: Random().nextInt(3000)), () {
      setState(() {
        action();
      });
    });
  }

  Widget helpMessage(String message, bool showIf) => Container(
    child: showIf ? Align(
      alignment: Alignment.centerLeft,
      child: FittedBox(
          fit: BoxFit.scaleDown,
          child: HelpMessage(message: message)
      ),
    ) : null
  );

  Widget userMessage(String message, bool showIf) => Container(
    child: showIf ? Align(
      alignment: Alignment.centerRight,
      child: UserMessage(message: message),
    ) : null
  );
}
